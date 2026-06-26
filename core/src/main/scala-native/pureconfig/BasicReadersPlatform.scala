package pureconfig

/** Trait containing `ConfigReader` instances for primitive types and simple classes in Java and Scala standard
  * libraries.
  *
  * Scala Native aggregate: omits reader traits backed by java.* APIs that are unavailable on Scala
  * Native 0.5.x and would otherwise produce "Unreachable symbols" at link time:
  *   - `UrlReader` (java.net.URL)
  *   - `JavaTimeReaders` (java.time.{Instant, ZoneId, ZoneOffset, Period, Year, Duration},
  *     java.time.temporal.ChronoUnit)
  *   - `DurationReaders` (depends on DurationUtils, which uses java.time)
  */
trait BasicReaders
    extends PrimitiveReaders
    with JavaEnumReader
    with UriAndPathReaders
    with RegexReaders
    with NumericReaders
    with TypesafeConfigReaders

object BasicReaders extends BasicReaders
