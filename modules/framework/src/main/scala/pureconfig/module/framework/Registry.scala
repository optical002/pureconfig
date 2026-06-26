package pureconfig.module.framework

import java.io.File

import pureconfig.error.{CannotConvert, ConfigReaderFailures}
import pureconfig.{ConfigReader, ConfigSource}

/** A config type whose instances live one-per-file in a config subdirectory. Implement this for `C` to opt into the
  * [[Registry]] loader; everything else (directory walk, per-file parsing, id validation) is shared.
  *
  * Ported from the `RegistryItem` trait in `framework/src/config/registry.rs`.
  */
trait RegistryItem[C] {

  /** Subdirectory under the config root, e.g. `"game/assets/enemies"`. */
  def subdir: String
}

object RegistryItem {
  def apply[C](implicit ev: RegistryItem[C]): RegistryItem[C] = ev

  def at[C](dir: String): RegistryItem[C] =
    new RegistryItem[C] { val subdir: String = dir }
}

/** Identifier of a registry entry — the config file stem, phantom-tagged by the config type it identifies:
  * `Id[EnemyConfig]("skeleton")`. Equality and hashing are by the string value alone (the phantom type is erased).
  *
  * Ported from the `Id<C>` type in `framework/src/config/registry.rs`.
  */
final case class Id[C](value: String) extends AnyVal {
  override def toString: String = s"Id($value)"
}

object Id {

  /** Parse an id from a plain string, without validating it against a known set. Use [[validatedReader]] when the set
    * of valid ids is available.
    */
  implicit def idReader[C]: ConfigReader[Id[C]] =
    ConfigReader.fromCursor(_.asString.map(Id[C](_)))

  /** Parse an id and validate it against a known set (the Rust original did this through the parse context's
    * `known_ids`). `subdir` is only used to make the error message match the original.
    */
  def validatedReader[C](knownIds: Set[Id[C]], subdir: String): ConfigReader[Id[C]] =
    ConfigReader.fromCursor { cur =>
      cur.asString.flatMap { s =>
        val id = Id[C](s)
        if (knownIds.contains(id)) Right(id)
        else
          cur.failed(
            CannotConvert(
              s,
              "Id",
              s"'$s' is not a known $subdir id (known: ${knownIds.map(_.value).mkString("{", ", ", "}")})"
            )
          )
      }
    }
}

/** A map from [[Id]] to the parsed config of type `C`, built by [[Registry.load]] from a directory of `*.conf` files.
  *
  * Ported from the `Registry<C>` type in `framework/src/config/registry.rs`.
  */
final case class Registry[C](entries: Map[Id[C], C]) {
  def get(id: Id[C]): Option[C] = entries.get(id)
  def contains(id: Id[C]): Boolean = entries.contains(id)
  def ids: Iterable[Id[C]] = entries.keys
  def size: Int = entries.size
}

object Registry {
  def empty[C]: Registry[C] = Registry(Map.empty)

  /** List the `*.conf` file stems in `dir`, sorted for deterministic ordering. */
  def collectConfNames(dir: File): Either[String, List[String]] =
    Option(dir.listFiles())
      .toRight(s"failed to read config dir ${dir.getPath}")
      .map { files =>
        files.toList
          .filter(f => f.isFile && f.getName.endsWith(".conf"))
          .map(f => f.getName.stripSuffix(".conf"))
          .sorted
      }

  /** Load every `.conf` file under `<configDir>/<subdir>`, parse each through `C`'s [[ConfigReader]], and collect them
    * into a [[Registry]] keyed by file stem.
    *
    * Mirrors `parse_registry` from the Rust original (minus the reactive `RxRef` registry cell, which has no JVM
    * analogue here).
    */
  def load[C](configDir: File)(implicit
      item: RegistryItem[C],
      reader: ConfigReader[C]
  ): Either[ConfigReaderFailures, Registry[C]] = {
    val subdirFile = new File(configDir, item.subdir)
    collectConfNames(subdirFile) match {
      case Left(msg) =>
        Left(ConfigReaderFailures(asFailure(msg)))
      case Right(names) =>
        val loaded: List[Either[ConfigReaderFailures, (Id[C], C)]] =
          names.map { name =>
            val file = new File(subdirFile, s"$name.conf")
            ConfigSource
              .file(file)
              .load[C]
              .map(cfg => Id[C](name) -> cfg)
          }
        loaded.collectFirst { case Left(f) => f } match {
          case Some(failures) => Left(failures)
          case None => Right(Registry(loaded.collect { case Right(kv) => kv }.toMap))
        }
    }
  }

  private def asFailure(msg: String): pureconfig.error.ConvertFailure =
    pureconfig.error.ConvertFailure(CannotConvert(msg, "Registry", msg), None, "")
}
