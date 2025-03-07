import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  String? input = stdin.readLineSync();

  try {
    int age = int.parse(input!);
    if (age < 0) {
      print("Age cannot be negative.");
    } else if (age > 100) {
      print("You have already turned 100!");
    } else {
      int yearsLeft = 100 - age;
      print("You have $yearsLeft years left until you turn 100.");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}