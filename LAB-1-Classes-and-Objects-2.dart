class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

//Exercise 2

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

//Exercise 3
abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double calculateArea() {
    return side * side;
  }
}



void main() {
  //Exercise 1
  Rectangle rectangle = Rectangle(5, 10);
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");

  //Exercise 2
  Product product = Product("Book", 10.0, 3);
  print("Total cost of ${product.name}: ${product.calculateTotalCost()}");

  //Exercise 3
   Circle circle = Circle(5);
  print("Area of Circle: ${circle.calculateArea()}");

  Square square = Square(4);
  print("Area of Square: ${square.calculateArea()}");
}