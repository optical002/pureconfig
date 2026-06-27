package pureconfig.smoke

import java.nio.file.Files

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

    // --- substitution resolution (the new resolution layer) ---
    check(
      "substitution (whole value)",
      ConfigSource.string("a = 1\nb = ${a}").at("b").load[Int],
      1
    )
    check(
      "substitution (string concat)",
      ConfigSource
        .string("""host-suffix = "example.com"
                   |host = "myhost1."${host-suffix}""".stripMargin)
        .at("host")
        .load[String],
      "myhost1.example.com"
    )
    check(
      "substitution (deferred across withFallback)",
      ConfigSource
        .string("""host-override = "myhost1."${host-suffix}""")
        .withFallback(ConfigSource.string("""host-suffix = "example.com""""))
        .at("host-override")
        .load[String],
      "myhost1.example.com"
    )
    check(
      "optional substitution omitted",
      ConfigSource.string("a = ${?missing}\nb = 7").at("b").load[Int],
      7
    )

    // required substitution that can't resolve must fail as a parse error
    ConfigSource.string("""x = ${nope}""").at("x").load[String] match {
      case Left(_) => println("ok   unresolved substitution fails")
      case Right(v) => failures += 1; println(s"FAIL unresolved substitution: got $v")
    }

    // --- include resolution ---
    locally {
      val dir = Files.createTempDirectory("pc-smoke-include")
      val a = dir.resolve("a.conf")
      val b = dir.resolve("b.conf")
      Files.write(b, "conf { a = \"string\" }\n".getBytes("UTF-8"))
      Files.write(a, "include \"b\"\nconf { b = \"hello\" }\n".getBytes("UTF-8"))
      check(
        "include merges sibling object",
        ConfigSource.file(a).at("conf").load[Map[String, String]],
        Map("a" -> "string", "b" -> "hello")
      )
    }

    if (failures == 0) println("ALL OK")
    else {
      println(s"$failures FAILURE(S)")
      sys.exit(1)
    }
  }
}
