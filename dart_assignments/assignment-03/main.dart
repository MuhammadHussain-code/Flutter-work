import 'dart:io';

void main() {
//   Q.1
// Write a Dart program to check if a given number is positive, negative, or zero.

  num numberToCheck = -120;

  if (numberToCheck > 0) {
    print('$numberToCheck is a positive number!');
  } else if (numberToCheck < 0) {
    print('$numberToCheck is a negative number!');
  } else {
    print('Given number is Zero!');
  }

// Q.2 Develop a Dart program that determines whether a given character is an alphabet, digit, or special character.

  String input = stdin.readLineSync()!; // Read input from user

  // Get the first character from the input string
  var char = input[0];

  if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90 ||
      char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
    print("$char is an alphabet");
  } else if (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57) {
    print("$char is a digit");
  } else {
    print("$char is a special character");
  }

// Q.3 Write a Dart program to determine if a given year is a leap year or not, considering leap years occur every 4 years except for years divisible by 100 unless they are also divisible by 400.

  int year = 2100;
  bool isLeapYear = (year % 4) == 0;
  bool isCenturyYear = (year % 100) == 0;
  bool isLeapAndCenturyYear = (year % 400) == 0;

  if ((isLeapYear && !isCenturyYear) || (isLeapAndCenturyYear)) {
    print('$year is Century and a Leap year!');
  } else if (isLeapYear) {
    print('$year is a Leap year!');
  } else {
    print('$year is not a Leap year!');
  }
}
