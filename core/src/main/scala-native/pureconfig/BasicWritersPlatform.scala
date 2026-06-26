package pureconfig

/** Trait containing `ConfigWriter` instances for primitive types and simple classes in Java and Scala standard
  * libraries.
  *
  * Scala Native aggregate: omits writer traits backed by java.* APIs that are unavailable on Scala
  * Native 0.5.x and would otherwise produce "Unreachable symbols" at link time:
  *   - `UrlWriter` (java.net.URL)
  *   - `JavaTimeWriters` (java.time.{Instant, ZoneId, ZoneOffset, Period, Year, Duration},
  *     java.time.temporal.ChronoUnit)
  *   - `DurationWriters` (depends on DurationUtils, which uses java.time)
  */
trait BasicWriters
    extends PrimitiveWriters
    with JavaEnumWriter
    with UriAndPathWriters
    with RegexWriters
    with NumericWriters
    with TypesafeConfigWriters

object BasicWriters extends BasicWriters
