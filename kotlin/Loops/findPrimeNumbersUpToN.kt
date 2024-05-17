fun main(){
    println("Enter a number:")
    val number = readLine()!!.toInt()
    var primeNumbers = ""
    for (i in 2..number){
        var isPrime = true
        for (j in 2..i/2){
            if (i % j == 0){
                isPrime = false
                break
            }
        }
        if (isPrime){
            primeNumbers += "$i "
        }
    }
    println("Prime numbers up to $number are: $primeNumbers")}