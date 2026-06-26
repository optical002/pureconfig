package pureconfig

/** JVM implementation of the word-break splitter used by [[CapitalizedWordsNamingConvention]].
  *
  * Uses a zero-width lookbehind/lookahead regex (kept identical to the original implementation) to split between word
  * boundaries in capitalized identifiers.
  */
private[pureconfig] object WordBreakSplitter {

  private val wordBreakPattern =
    String.format("%s|%s|%s", "(?<=[A-Z])(?=[A-Z][a-z])", "(?<=[^A-Z])(?=[A-Z])", "(?<=[A-Za-z])(?=[^A-Za-z])").r

  def splitWords(s: String): Array[String] =
    wordBreakPattern.split(s)
}
