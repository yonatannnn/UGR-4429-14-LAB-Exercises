class ShoppingCart {
    private val items: MutableMap<String, Double> = mutableMapOf()
    
    fun addItem(itemName: String, price: Double) {
        if (items.containsKey(itemName)) {
            println("Item already exists in the cart. Updating quantity.")
        }
        items[itemName] = price
    }
    
    fun removeItem(itemName: String) {
        if (!items.containsKey(itemName)) {
            println("Item does not exist in the cart.")
        }
        items.remove(itemName)
    }
    
    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((_, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }
}

fun main() {
    val cart = ShoppingCart()
    
    cart.addItem("Item1", 10.0)
    cart.addItem("Item2", 20.0)
    cart.addItem("Item3", 30.0)
    
    cart.removeItem("Item2")
    
    println("Total price: ${cart.calculateTotalPrice()}")
}
