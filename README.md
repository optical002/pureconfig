# pureconfig (Scala Native fork) — raw-git Maven repo

This branch hosts a Maven-layout repository of the Scala Native build of
pureconfig, backed by the SHocon `com.typesafe.config` shim
(`org.akka-js:shocon-parser`). Served raw from GitHub.

Consume from sbt (Scala 3.8.1 / scala-native 0.5.10):

```scala
resolvers += "pureconfig-native" at
  "https://raw.githubusercontent.com/optical002/pureconfig/maven/maven"
resolvers += "shocon-native" at
  "https://raw.githubusercontent.com/optical002/shocon/maven/maven"
libraryDependencies +=
  ("com.github.pureconfig" % "pureconfig-core" % "1.0.0-native").cross(ScalaNativeCrossVersion.binary)
```

Source on the `scala-native-port` branch.
