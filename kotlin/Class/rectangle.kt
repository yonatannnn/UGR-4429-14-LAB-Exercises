class Rectangle(val length: Double, val width: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }
    
    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Perimeter: ${rectangle.calculatePerimeter()}")
    println("Area: ${rectangle.calculateArea()}")
}
