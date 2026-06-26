package pureconfig.module

import pureconfig.ConfigReader

/** A Scala port of the game-agnostic config layer from the Rust `framework` crate (survivor-game), rebuilt on top of
  * pureconfig.
  *
  * The Rust crate defined its own `GameParser<Ctx>` typeclass — "a config value plus a parse context produces a value
  * or an error string". On the JVM, pureconfig already provides exactly that typeclass as [[pureconfig.ConfigReader]]
  * (`ConfigCursor => Either[ConfigReaderFailures, A]`), and Scala's `derives` / `ConfigReader.derived` replaces the
  * `#[derive(GameParser)]` proc-macro. So this port maps `GameParser` onto `ConfigReader` rather than reintroducing a
  * parallel typeclass.
  *
  * What was ported (the game-agnostic config value types and the id/registry directory pattern):
  *   - [[Percentage]] — `"80%"` style percentages stored as a fraction
  *   - [[RangeConfig]] — inclusive integer `[min, max]` ranges
  *   - [[TimeSpan]] — humantime-style durations (`"6s"`, `"1h 20m"`)
  *   - [[TimeSpanRange]] — `"30s..5m"` duration windows
  *   - [[ChanceTable]] — independent-roll random tables
  *   - [[ByPtr]] — reference-equality shared payload wrapper
  *   - [[Id]] / [[Registry]] — the "directory of `*.conf` files → id set" pattern
  *
  * What was intentionally dropped (Godot- or Rust-specific, no Scala analogue): the Godot `Prefab`/`Color`/`TweenCurve`
  * parsers, the `notify`-based hot-reload watcher, the `tracing` telemetry layer, the rng helpers, and the
  * `framework-macros` proc-macro crate (subsumed by pureconfig derivation).
  */
package object framework {

  /** Convenience alias mirroring the Rust `GameParser` name. A `FrameworkReader[A]` is just a pureconfig
    * [[ConfigReader]] for `A`.
    */
  type FrameworkReader[A] = ConfigReader[A]

  val FrameworkReader: ConfigReader.type = ConfigReader
}
