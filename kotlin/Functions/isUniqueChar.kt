fun isUniqueChars(word: String): Boolean {
    val charSet = word.toSet()
    return charSet.size == word.length
}

fun main() {
    val result: Boolean = isUniqueChars("yonatan")
    println(result)
}
