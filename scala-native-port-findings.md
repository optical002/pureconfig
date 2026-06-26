# PureConfig Scala Native Port — Spike Findings

**Date:** 2026-06-26
**Branch:** `scala-native-port`
**Goal of this spike:** Wire a Scala Native (Scala 3 only) target into the build, attempt
`publishLocal`, and let the concrete compile errors scope the real porting work.

## What was done

1. Added Scala Native plugins to `project/plugins.sbt`:
   - `org.scala-native % sbt-scala-native % 0.5.8`
   - `org.portable-scala % sbt-scala-native-crossproject % 1.3.2`
2. Added two **additive** Native project variants to `build.sbt` (`coreNative`, `genericBaseNative`),
   pinned to **Scala 3.3.7** with a separate `target-native` output dir, and **excluded** the JVM-only
   `com.typesafe:config` dependency.
3. Ran `sbt coreNative/compile`.

These build changes are real and committed to the working tree; the build loads cleanly and the Native
toolchain is wired up correctly (clang present, `nativelib`/`javalib`/`scala3lib` resolve).

## Key environment facts discovered

- **Scala version pin:** Scala Native 0.5.8 has **no stdlib for Scala 3.3.8** (the repo's main `scala3`).
  The newest 3.3.x LTS it supports is **3.3.7** — so the Native variant pins there. (Confirmed by probing
  Maven Central: `scala3lib_native0.5_3:3.3.7+0.5.8` exists, `3.3.8+0.5.8` is 404.)
- Toolchain present: clang/clang++ available, JDK 17, sbt 1.12.13.

## Root cause (single, definitive)

`pureconfig-core` does **not** compile on Scala Native for exactly one reason:

> **20 of the ~41 core source files `import com.typesafe.config.*`, and Typesafe Config is a JVM-only
> Java library with no Scala Native artifact.** Once excluded, every `import com.typesafe.config...`
> fails with `value typesafe is not a member of com`, and all 230 reported error lines cascade from
> those failed imports (the `E046` "cyclic reference" and `E006`/`E007` "not found: a/b/fa" errors are
> downstream noise from the broken imports — not independent problems).

### Files that import `com.typesafe.config` (must each be addressed)

```
core/src/main/scala/pureconfig/package.scala
core/src/main/scala/pureconfig/ConfigReader.scala
core/src/main/scala/pureconfig/ConfigWriter.scala
core/src/main/scala/pureconfig/ConfigSource.scala
core/src/main/scala/pureconfig/ConfigCursor.scala
core/src/main/scala/pureconfig/BasicReaders.scala
core/src/main/scala/pureconfig/BasicWriters.scala
core/src/main/scala/pureconfig/CollectionWriters.scala
core/src/main/scala/pureconfig/PeriodUtils.scala
core/src/main/scala/pureconfig/configurable/package.scala
core/src/main/scala/pureconfig/syntax/package.scala
core/src/main/scala/pureconfig/backend/ConfigFactoryWrapper.scala
core/src/main/scala/pureconfig/backend/ConfigWrapper.scala
core/src/main/scala/pureconfig/backend/ErrorUtil.scala
core/src/main/scala/pureconfig/backend/PathUtil.scala
core/src/main/scala/pureconfig/error/ConfigReaderFailure.scala
core/src/main/scala/pureconfig/error/FailureReason.scala
core/src/main/scala-3/pureconfig/generic/derivation/EnumConfigConvert.scala
core/src/main/scala-3/pureconfig/generic/derivation/EnumConfigWriterDerivation.scala
(plus generated core/.../src_managed/main/pureconfig/ProductWriters.scala via sbt-boilerplate)
```

### Exact Typesafe Config API surface that must be provided on Native

Public types woven through the **public** API (readers, writers, cursors, sources, errors):
```
Config, ConfigValue, ConfigObject, ConfigList, ConfigValueType, ConfigValueFactory,
ConfigMemorySize, ConfigOrigin, ConfigRenderOptions, ConfigUtil, ConfigFactory
```
Plus **internal** (`com.typesafe.config.impl.*`) APIs — these are the hardest, as no shim exposes them:
```
com.typesafe.config.impl.ConfigImplUtil     (PeriodUtils.scala)
com.typesafe.config.impl.DefaultTransformer  (backend/ConfigWrapper.scala)
com.typesafe.config.impl.SimpleConfig        (backend/ConfigWrapper.scala)
```
And file/URL/resource/classloader loading in `backend/ConfigFactoryWrapper.scala`:
`ConfigFactory.parseFile / parseURL / parseResources / load / systemProperties` — constrained on Native.

## SHocon is NOT a viable drop-in (checked)

The plan considered [SHocon](https://github.com/akka-js/shocon) as a `com.typesafe.config`-shaped shim.
**It cannot be used here:** Maven Central only has `shocon_native0.3_2.11` — Scala Native **0.3** /
Scala **2.11**. There is **no Scala 3 and no Native 0.5 SHocon artifact** (`shocon_native0.5_3` → 404).
SHocon also does not expose the `com.typesafe.config.impl.*` internals that core uses.

## Conclusion / scope of the real port

A usable Native `pureconfig-core` is **not** publishable without first providing a `com.typesafe.config`
backend on Native. There is no shortcut. The remaining work, in order:

1. **Provide a HOCON/Config backend on Native.** Options:
   - Reimplement the needed `com.typesafe.config` surface (public + the 3 `impl` helpers) on Native, or
   - Port a HOCON parser to Scala 3 / Native 0.5 (SHocon would need a fresh cross-build first), or
   - Abstract pureconfig-core away from `com.typesafe.config.*` types entirely (largest refactor).
2. **Rework file/resource loading** (`ConfigFactoryWrapper`, `ConfigSource`) for Native — no classloader
   resource scanning; file/URL access via Native-supported `java.io`/`java.nio` subset only. Best handled
   with platform-specific sources under `core/src/main/scala-native/`.
3. **Re-run** `coreNative/compile`, then `coreNative/nativeLink` (link-time will surface any remaining
   unsupported `java.*` intrinsics that compile but don't link), then `coreNative/publishLocal`.
4. Only after core links: `genericBaseNative` (pure-Scala, should follow trivially) and the Scala 3
   `derives` derivation (already present in `core/src/main/scala-3/...`, no shapeless needed).

## How to reproduce

```bash
sbt 'coreNative/compile'      # 230 errors, all rooted in missing com.typesafe.config
# full log captured during the spike under the session scratchpad: native-compile3.log
```

## State of the build changes

`project/plugins.sbt` and `build.sbt` now carry the Native scaffolding (plugins + `coreNative` /
`genericBaseNative` projects + Scala 3.3.7 pin + config exclusion). They are **correct and reusable** as
the foundation for the real port; they just can't produce a working artifact until step 1 above is done.
Nothing was published to `~/.ivy2/local` (compile fails before publish).
