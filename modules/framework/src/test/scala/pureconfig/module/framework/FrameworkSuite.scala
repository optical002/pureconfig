package pureconfig.module.framework

import scala.concurrent.duration._

import com.typesafe.config.ConfigFactory

import pureconfig.BaseSuite
import pureconfig.syntax._

class FrameworkSuite extends BaseSuite {

  // --- Percentage (percentage.rs) ---

  "Percentage" should "parse unquoted percents as fractions" in {
    configString("60%").to[Percentage].value shouldEqual Percentage(0.6f)
    configString("100%").to[Percentage].value shouldEqual Percentage(1.0f)
    configString("0%").to[Percentage].value shouldEqual Percentage.Zero
  }

  it should "allow values above 100%" in {
    configString("150%").to[Percentage].value shouldEqual Percentage(1.5f)
  }

  it should "reject a bare number" in {
    ConfigFactory.parseString("x = 60").getValue("x").to[Percentage] should be(Symbol("left"))
  }

  it should "reject negative percentages" in {
    configString("-5%").to[Percentage] should be(Symbol("left"))
  }

  // --- TimeSpan (time_span.rs) ---

  "TimeSpan" should "parse single-unit durations" in {
    configString("6s").to[TimeSpan].value shouldEqual TimeSpan(6.seconds)
    configString("500ms").to[TimeSpan].value shouldEqual TimeSpan(500.millis)
    configString("10m").to[TimeSpan].value shouldEqual TimeSpan(10.minutes)
  }

  it should "sum multi-segment durations" in {
    configString("1h 20m").to[TimeSpan].value shouldEqual TimeSpan(80.minutes)
  }

  it should "reject a bare number" in {
    ConfigFactory.parseString("x = 60").getValue("x").to[TimeSpan] should be(Symbol("left"))
  }

  // --- TimeSpanRange (time_span_range.rs) ---

  "TimeSpanRange" should "parse a range" in {
    val r = configString("0m..1m").to[TimeSpanRange].value
    r.from shouldEqual TimeSpan(0.seconds)
    r.to shouldEqual TimeSpan(60.seconds)
  }

  it should "treat ..= as equivalent to .." in {
    configString("0s..1m").to[TimeSpanRange].value shouldEqual
      configString("0s..=1m").to[TimeSpanRange].value
  }

  it should "allow equal endpoints" in {
    val r = configString("1m..1m").to[TimeSpanRange].value
    r.from shouldEqual r.to
  }

  it should "reject from after to" in {
    configString("5m..1m").to[TimeSpanRange] should be(Symbol("left"))
  }

  it should "have half-open containment" in {
    val r = configString("1m..2m").to[TimeSpanRange].value
    r.contains(59.seconds) shouldBe false
    r.contains(60.seconds) shouldBe true
    r.contains(119.seconds) shouldBe true
    r.contains(120.seconds) shouldBe false
  }

  // --- RangeConfig (range.rs) ---

  "RangeConfig" should "treat a bare number as a fixed range" in {
    ConfigFactory.parseString("x = 3").getValue("x").to[RangeConfig].value shouldEqual RangeConfig(3, 3)
  }

  it should "parse exclusive ranges" in {
    configString("3..6").to[RangeConfig].value shouldEqual RangeConfig(3, 5)
  }

  it should "parse inclusive ranges" in {
    configString("3..=6").to[RangeConfig].value shouldEqual RangeConfig(3, 6)
  }

  it should "reject a min of zero" in {
    ConfigFactory.parseString("x = 0").getValue("x").to[RangeConfig] should be(Symbol("left"))
  }

  it should "reject max < min" in {
    configString("6..=3").to[RangeConfig] should be(Symbol("left"))
  }

  // --- ByPtr (by_ptr.rs) ---

  "ByPtr" should "compare by reference identity" in {
    val s = "shared"
    ByPtr(s) shouldEqual ByPtr(s)
    ByPtr(new String("a")) should not equal ByPtr(new String("a"))
  }

  // --- ChanceTable (random_table.rs) ---

  "ChanceTable" should "parse entries and shorthand certain entries" in {
    val conf = ConfigFactory.parseString(
      """drops {
        |  ChanceTable = [
        |    { item = "coins", chance = "60%" },
        |    "magnet"
        |  ]
        |}""".stripMargin
    )
    val table = conf.getValue("drops").to[ChanceTable[String]].value
    table.entries shouldEqual List(
      ChanceEntry("coins", Percentage(0.6f)),
      ChanceEntry("magnet", Percentage.Certain)
    )
  }

  it should "reject an unknown table kind" in {
    val conf = ConfigFactory.parseString("""t { WeightTable = [] }""")
    conf.getValue("t").to[ChanceTable[String]] should be(Symbol("left"))
  }

  it should "roll each entry independently" in {
    val table = ChanceTable(
      List(ChanceEntry("a", Percentage(0.5f)), ChanceEntry("b", Percentage(0.5f)))
    )
    // unitRand always returns 0.0 (< 0.5), so both pass.
    table.roll(() => 0.0f) shouldEqual List("a", "b")
    // unitRand always returns 0.9 (>= 0.5), so none pass.
    table.roll(() => 0.9f) shouldEqual Nil
  }
}
