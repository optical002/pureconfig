# Framework module for PureConfig

A Scala port of the game-agnostic config layer from the Rust `framework` crate
(survivor-game), rebuilt on top of PureConfig. It adds a small set of config
value types — percentages, integer ranges, humantime durations, duration
windows, and independent-roll random tables — plus a reference-equality wrapper
and the "directory of `*.conf` files → id registry" loader.

The Rust original defined its own `GameParser<Ctx>` typeclass and a
`#[derive(GameParser)]` proc-macro. On the JVM those are subsumed by PureConfig's
`ConfigReader` and its `derives` / `ConfigReader.derived` derivation, so this
module supplies `ConfigReader` instances rather than a parallel typeclass. The
Godot-specific parsers, the `notify` hot-reload watcher, and the `tracing`
telemetry layer were intentionally left out — they have no Scala analogue.

## Add pureconfig-framework to your project

In addition to [core PureConfig](https://github.com/pureconfig/pureconfig), you'll need:

```scala
libraryDependencies += "com.github.pureconfig" %% "pureconfig-framework" % "@VERSION@"
```

## Provided value types

| Type             | HOCON form                              | Notes                                  |
|------------------|-----------------------------------------|----------------------------------------|
| `Percentage`     | `"80%"`, `"14.5%"`                       | Stored as a fraction; bare numbers rejected |
| `RangeConfig`    | `3`, `"3..6"`, `"3..=6"`                 | Inclusive `[min, max]`; `..` is exclusive upper |
| `TimeSpan`       | `"6s"`, `"500ms"`, `"1h 20m"`           | Multi-segment durations are summed     |
| `TimeSpanRange`  | `"30s..5m"`                              | Half-open `[from, to)` window          |
| `ChanceTable[A]` | `{ ChanceTable = [ … ] }`               | Independent per-entry roll             |
| `ByPtr[A]`       | any `A`                                  | Equality by reference identity         |

## Example

```scala mdoc:silent
import com.typesafe.config.ConfigFactory.parseString
import pureconfig._
import pureconfig.generic.auto._
import pureconfig.module.framework._

case class SpawnerConfig(
    spawnInterval: TimeSpan,
    burst: RangeConfig,
    spawnChance: Percentage
)
```

```scala mdoc
val conf = parseString("""{
  spawn-interval = "1h 20m"
  burst = "3..6"
  spawn-chance = "80%"
}""")

ConfigSource.fromConfig(conf).load[SpawnerConfig]
```

## Id registries

`Registry.load[C]` walks a config subdirectory, parsing each `*.conf` file into a
`C` keyed by its file stem (`Id[C]`). A config type opts in by providing a
`RegistryItem[C]` that names its subdirectory:

```scala mdoc:silent
import java.io.File
import pureconfig.generic.auto._
import pureconfig.module.framework.{Id, Registry, RegistryItem}

case class EnemyConfig(health: Int)

implicit val enemyItem: RegistryItem[EnemyConfig] =
  RegistryItem.at[EnemyConfig]("assets/enemies")

// Registry.load[EnemyConfig](new File("config")) reads config/assets/enemies/*.conf
// into a Registry[EnemyConfig] keyed by file stem (Id[EnemyConfig]).
```
