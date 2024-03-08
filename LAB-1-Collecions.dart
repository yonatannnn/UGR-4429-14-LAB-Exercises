import 'dart:math';


//Exercise 4
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}


//Exercise 5
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    double sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}



void main() {
  List<String> hobbies = ['Reading', 'Running', 'Cooking', 'Traveling'];

  hobbies.add('Painting');
  print('Hobbies after adding: $hobbies');

  hobbies.remove('Running');
  print('Hobbies after removing: $hobbies');

  hobbies.sort();
  print('Hobbies after sorting: $hobbies');

  print('Is the list empty? ${hobbies.isEmpty}');

  //Exercise 2
  List<int> numbers = List.generate(10, (index) => Random().nextInt(10));
  print('Original list of numbers: $numbers');

  Set<int> uniqueNumbers = numbers.toSet();
  print('Unique numbers: $uniqueNumbers');



  //Exercise 3
   Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 90);
  studentMarks.putIfAbsent('Bob', () => 85);
  studentMarks.putIfAbsent('Carol', () => 95);

  studentMarks.forEach((name, marks) => print('$name: $marks'));

  print('Does Bob exist? ${studentMarks.containsKey('Bob')}');

  //Exercise 4
   List<Product> cart = [];

  cart.add(Product('Book', 15.99, 1));
  cart.add(Product('Shirt', 25.99, 2));
  cart.add(Product('Headphones', 49.99, 1));

  double totalPrice = 0;
  for (var product in cart) {
    totalPrice += product.price * product.quantity;
  }
  print('Total price: \$${totalPrice.toStringAsFixed(2)}');

  cart.removeWhere((product) => product.name == 'Shirt');
  print('Cart after removing Shirt: $cart');



  //Exercise 5
  Student student = Student('Alice', [80, 85, 90, 75, 88]);
  double averageMark = student.calculateAverageMark();
  print('Average mark for ${student.name}: ${averageMark.toStringAsFixed(2)}');
}



