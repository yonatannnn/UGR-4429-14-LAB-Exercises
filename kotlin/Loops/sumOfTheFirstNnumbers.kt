fun main(){
    println("Enter a number:")
    val number = readLine()!!.toInt()
    var sum = 0
    for (i in 1..number){
        sum += i
    }
    println("The sum of the first $number numbers is: $sum")
}