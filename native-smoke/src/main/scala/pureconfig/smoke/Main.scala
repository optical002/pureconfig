package pureconfig.smoke

import pureconfig._

/** End-to-end Scala Native smoke test: HOCON string -> SHocon parse -> cursor -> reader,
  * covering primitives, collections, and Scala 3 `derives` derivation. Exits non-zero on any
  * mismatch so `nativeLink` + run doubles as a link-and-behaviour check.
  */
object Main {

  case class Server(host: String, port: Int, tags: List[String]) derives ConfigReader

  private var failures = 0

  private def check[A](label: String, actual: Either[Any, A], expected: A): Unit =
    actual match {
      case Right(v) if v == expected => println(s"ok   $label = $v")
      case Right(v) => failures += 1; println(s"FAIL $label: got $v expected $expected")
      case Left(e) => failures += 1; println(s"FAIL $label: error $e")
    }

  def main(args: Array[String]): Unit = {
    check("int", ConfigSource.string("a = 1").at("a").load[Int], 1)
    check("long", ConfigSource.string("a = 9000000000").at("a").load[Long], 9000000000L)
    check("double", ConfigSource.string("a = 3.5").at("a").load[Double], 3.5)
    check("boolean", ConfigSource.string("a = true").at("a").load[Boolean], true)
    check("string", ConfigSource.string("""a = "hi"""").at("a").load[String], "hi")
    check(
      "list",
      ConfigSource.string("a = [1, 2, 3]").at("a").load[List[Int]],
      List(1, 2, 3)
    )
    check(
      "map",
      ConfigSource.string("a { x = 1, y = 2 }").at("a").load[Map[String, Int]],
      Map("x" -> 1, "y" -> 2)
    )
    check(
      "derived case class",
      ConfigSource
        .string("""s { host = "localhost", port = 8080, tags = ["a", "b"] }""")
        .at("s")
        .load[Server],
      Server("localhost", 8080, List("a", "b"))
    )

    if (failures == 0) println("ALL OK")
    else {
      println(s"$failures FAILURE(S)")
      sys.exit(1)
    }
  }
}
