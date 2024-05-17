fun main() {
    println("Enter the month (1-12):")
    val month = readLine()!!.toInt()
    println("Enter the day (1-31):")
    val day = readLine()!!.toInt()
    val season = when (month) {
        1, 2 -> "Winter"
        3 -> if (day < 20) "Winter" else "Spring"
        4, 5 -> "Spring"
        6 -> if (day < 21) "Spring" else "Summer"
        7, 8 -> "Summer"
        9 -> if (day < 22) "Summer" else "Fall"
        10, 11 -> "Fall"
        12 -> if (day < 21) "Fall" else "Winter"
        else -> "Invalid month"
    }

    println("The season is: $season")
}
