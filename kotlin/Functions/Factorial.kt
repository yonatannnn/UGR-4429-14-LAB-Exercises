fun factorial(number: Int): Int {
    return if (number == 0 || number == 1) {
        1
    } else {
        number * factorial(number - 1)
    }
}

fun main() {
    val result: Int = factorial(5)
    println(result)
}
