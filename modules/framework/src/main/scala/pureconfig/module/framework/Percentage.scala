package pureconfig.module.framework

import scala.util.control.NonFatal

import pureconfig.ConfigReader
import pureconfig.error.CannotConvert

/** A percentage parsed from a `%`-suffixed string: `80%`, `14.5%`, `"14,5%"` (comma decimals work too, but need quotes
  * in HOCON since `,` terminates an unquoted value). Bare numbers are rejected — a percentage must say so. Values must
  * be `>= 0%` but may exceed `100%` (e.g. a `150%` damage bonus → fraction `1.5`).
  *
  * Stored as a fraction: `80%` => `Percentage(0.8f)`.
  *
  * Ported from `framework/src/config/percentage.rs`.
  */
final case class Percentage(value: Float) extends AnyVal {
  def fraction: Float = value
}

object Percentage {
  val Zero: Percentage = Percentage(0.0f)
  val Certain: Percentage = Percentage(1.0f)

  implicit val percentageReader: ConfigReader[Percentage] =
    ConfigReader.fromCursor { cur =>
      cur.asString.flatMap { raw =>
        val s = raw.trim
        s.stripSuffix("%") match {
          case digits if digits == s =>
            cur.failed(CannotConvert(raw, "Percentage", s"""'$s' must end with '%' (e.g. "80%", "14.5%")"""))
          case digits =>
            try {
              val percent = digits.trim.replace(',', '.').toFloat
              if (percent < 0.0f)
                cur.failed(CannotConvert(raw, "Percentage", s"'$s' must be at least 0%"))
              else
                Right(Percentage(percent / 100.0f))
            } catch {
              case NonFatal(e) =>
                cur.failed(CannotConvert(raw, "Percentage", s"'$s' is not a valid percentage: ${e.getMessage}"))
            }
        }
      }
    }
}
