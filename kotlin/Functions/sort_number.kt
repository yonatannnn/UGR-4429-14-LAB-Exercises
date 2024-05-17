fun bubbleSort(arr: IntArray) {
    val n = arr.size
    var temp: Int

    for (i in 0..n - 2) {
        for (j in 0..n - i - 2) {
            if (arr[j] > arr[j + 1]) {
              
                temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

fun main() {
    val arr = intArrayOf(64, 34, 25, 12, 22, 11, 90)
    println("Original array: ${arr.joinToString(", ")}")

    bubbleSort(arr)

    println("Sorted array: ${arr.joinToString(", ")}")
}
