package pureconfig

/** Trait containing `ConfigWriter` instances for primitive types and simple classes in Java and Scala standard
  * libraries.
  *
  * JVM aggregate: mixes in every writer trait, including the ones backed by java.* APIs that are not available on Scala
  * Native (`UrlWriter`, `JavaTimeWriters`, `DurationWriters`).
  */
trait BasicWriters
    extends PrimitiveWriters
    with JavaEnumWriter
    with UrlWriter
    with UriAndPathWriters
    with RegexWriters
    with JavaTimeWriters
    with DurationWriters
    with NumericWriters
    with TypesafeConfigWriters

object BasicWriters extends BasicWriters
