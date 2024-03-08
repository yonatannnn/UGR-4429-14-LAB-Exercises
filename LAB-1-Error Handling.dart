import 'dart:io';


//Exercise 2
double divideNumbers(double a, double b) {
  if (b == 0) {
    throw DivisionByZeroError();
  }
  return a / b;
}

void main() {
  //Exercise 1
  try {
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print("The entered number is: $number");
  } catch (e) {
    if (e is FormatException) {
      print("Error: Invalid input. Please enter a valid number.");
    } else {
      print("Error: $e");
    }
  }

  //Exercise 2
   double a = 10;
  double b = 0;
  try {
    double result = divideNumbers(a, b);
    print("Result of $a divided by $b: $result");
  } catch (e) {
    if (e is DivisionByZeroError) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("Error: $e");
    }
  }


  //Exercise 3
   try {
    File file = File('example.txt');
    String contents = file.readAsStringSync();
    print("File contents:");
    print(contents);
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: File not found or could not be read.");
    } else {
      print("Error: $e");
    }
  }


}