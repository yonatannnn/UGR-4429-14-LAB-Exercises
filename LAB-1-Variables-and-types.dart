//Exrecise 1
import 'dart:io';

void main() {
  //Exercise 1

  String name = "Yonatan";
  int age = 3;
  String favColor = "blue";

  print("My name is $name.");
  print("I am $age years old.");
  print("My favorite color is $favColor.");

  //Exercise 2

  const int speedOfLight = 299792458;
  print("Enter the distance (in meters) for which you want to calculate the time taken for light to travel:");
  String userInput = stdin.readLineSync()!;
  double distance = double.parse(userInput);
  double time = distance / speedOfLight;
  print("It takes approximately ${time.toStringAsFixed(9)} seconds for light to travel $distance meters.");

}


