// Exercise 1
double sum(double a, double b) {
  return a + b;
}

//Exercise 2

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}


//Exercise 3
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}



void main() {

  //Exercise 1
  double num1 = 5;
  double num2 = 7;
  double result = sum(num1, num2);
  print("The sum of $num1 and $num2 is: $result");

  //Exercise 2
  int start = 1;
  int end = 20;
  print("Prime numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }


  //Exercise 3
  String input = "Hello";
  String reversed = reverseString(input);
  print("The reverse of $input is: $reversed");
}
