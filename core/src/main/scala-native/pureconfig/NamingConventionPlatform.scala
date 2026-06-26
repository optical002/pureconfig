package pureconfig

import scala.collection.mutable.ArrayBuffer

/** Scala Native implementation of the word-break splitter used by [[CapitalizedWordsNamingConvention]].
  *
  * The JVM implementation splits on a zero-width regex made of three lookbehind/lookahead
  * alternatives. Scala Native's RE2-based `java.util.regex` engine does not support lookbehind or
  * lookahead, so this reimplements the exact same boundaries by hand. A break is inserted between
  * characters at index `i-1` and `i` when any of the following holds (matching the original regex):
  *
  *   - `(?<=[A-Z])(?=[A-Z][a-z])`: prev is upper, cur is upper, next is lower  (e.g. HTTPServer)
  *   - `(?<=[^A-Z])(?=[A-Z])`:     prev is not upper, cur is upper             (e.g. camelCase)
  *   - `(?<=[A-Za-z])(?=[^A-Za-z])`: prev is a letter, cur is not a letter     (e.g. foo1)
  *
  * Verified to produce identical output to the JVM regex across representative identifiers.
  */
private[pureconfig] object WordBreakSplitter {

  private def isUpper(c: Char): Boolean = c >= 'A' && c <= 'Z'
  private def isLetter(c: Char): Boolean = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')
  private def isLower(c: Char): Boolean = c >= 'a' && c <= 'z'

  private def isBoundary(s: String, i: Int): Boolean = {
    // boundary sits between s(i-1) and s(i); 0 < i < s.length
    val prev = s.charAt(i - 1)
    val cur = s.charAt(i)
    // (?<=[A-Z])(?=[A-Z][a-z])
    val rule1 = isUpper(prev) && isUpper(cur) && (i + 1 < s.length) && isLower(s.charAt(i + 1))
    // (?<=[^A-Z])(?=[A-Z])
    val rule2 = !isUpper(prev) && isUpper(cur)
    // (?<=[A-Za-z])(?=[^A-Za-z])
    val rule3 = isLetter(prev) && !isLetter(cur)
    rule1 || rule2 || rule3
  }

  def splitWords(s: String): Array[String] = {
    if (s.isEmpty) return Array(s)
    val result = ArrayBuffer.empty[String]
    var start = 0
    var i = 1
    while (i < s.length) {
      if (isBoundary(s, i)) {
        result += s.substring(start, i)
        start = i
      }
      i += 1
    }
    result += s.substring(start)
    result.toArray
  }
}
