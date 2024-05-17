fun main() {
    val sideOne: Int = 4
    val sideTwo: Int = 3
    val sideThree: Int = 5

    val list = listOf(sideOne, sideTwo, sideThree)

    val sides: Set<Int> = list.toSet()
    val sizes = sides.size
    val triangle: String = when (sizes) {
        1 -> "equilateral"
        2 -> "isosceles"
        3 -> "scalene"
        else -> "not a triangle"
    }
    println(triangle)
}

