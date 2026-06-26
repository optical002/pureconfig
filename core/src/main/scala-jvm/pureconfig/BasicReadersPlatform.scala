package pureconfig

/** Trait containing `ConfigReader` instances for primitive types and simple classes in Java and Scala standard
  * libraries.
  *
  * JVM aggregate: mixes in every reader trait, including the ones backed by java.* APIs that are not available on Scala
  * Native (`UrlReader`, `JavaTimeReaders`, `DurationReaders`).
  */
trait BasicReaders
    extends PrimitiveReaders
    with JavaEnumReader
    with UrlReader
    with UriAndPathReaders
    with RegexReaders
    with JavaTimeReaders
    with DurationReaders
    with NumericReaders
    with TypesafeConfigReaders

object BasicReaders extends BasicReaders
