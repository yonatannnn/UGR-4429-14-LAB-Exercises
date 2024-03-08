//Exercise 1
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}


//Exercise 2
class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}


void main() {
  Person yonatan = Person("Yonatan", 3, "Addis Ababa");
  yonatan.displayInfo();
  print(yonatan.age);
  yonatan.age = 4;
  print(yonatan.age);

  //Exercise 2
  Student student = Student("Yonatan", 3, "Addis Ababa", 1, [90, 80, 70, 60, 50]);
  student.displayInfo();
  print("Total marks: ${student.calculateTotalMarks()}");
  print("Average marks: ${student.calculateAverageMarks()}");
}