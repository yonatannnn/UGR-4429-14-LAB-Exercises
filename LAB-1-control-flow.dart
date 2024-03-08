//Exercise 1
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}


//Exercise 2
void printFirst10NaturalNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}



//Exercise 3
double calculator(double num1, double num2, String operator) {
  double result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("Invalid operator");
      return 0;
  }
  return result;
}


//Exercise 4

void displayLetterGrade(double result) {
  String grade;

  switch (result ~/ 10) {
    case 10:
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    case 6:
      grade = 'D';
      break;
    default:
      grade = 'F';
  }
  print("The corresponding letter grade for the result $result is: $grade");
}








void main() {
  int number = 7;
  checkEvenOrOdd(number);

  printFirst10NaturalNumbers();
  
  double num1 = 5;
  double num2 = 3;
  String operator = '+';
  calculator(num1, num2, operator);

  double grade = 85;
  displayLetterGrade(grade);

  

}
