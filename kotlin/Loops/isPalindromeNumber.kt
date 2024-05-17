fun main(){
    println("Enter a number:")
    var number = readLine()!!.toInt()
    var reversedNumber = 0
    var remainder: Int
    var originalNumber = number
    while (number != 0){
        remainder = number % 10
        reversedNumber = reversedNumber * 10 + remainder
        number /= 10
    }
    if (originalNumber == reversedNumber){
        println("$originalNumber is a palindrome number.")
    } else {
        println("$originalNumber is not a palindrome number.")
    }
}