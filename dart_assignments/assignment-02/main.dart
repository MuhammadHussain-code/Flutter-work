void main() {
  // Q1
  int length = 5;
  int breadth = 3;

  if (length == breadth) {
    print("It's a square!");
  } else {
    print("It's a rectangle.");
  }

  // Q2

  int age1 = 30;
  int age2 = 25;

  if (age1 > age2) {
    print("The oldest is $age1 and the youngest is $age2.");
  } else if (age1 < age2) {
    print("The oldest is $age2 and the youngest is $age1.");
  } else {
    print("Both are the same age: $age1.");
  }

  // Q3
  int classesHeld = 16;
  int classesAttended = 10;

  double attendancePercentage = (classesAttended / classesHeld) * 100;

  if (attendancePercentage >= 75) {
    print("Student is allowed to sit in the exam.");
  } else {
    print("Student is not allowed to sit in the exam due to low attendance.");
  }

  // Q4
  int year = 2024;

  if (year % 4 == 0) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }

  //Q5
  double temperature = 42;

  if (temperature < 0) {
    print("Freezing weather.");
  } else if (temperature >= 0 && temperature <= 10) {
    print("Very Cold weather.");
  } else if (temperature > 10 && temperature <= 20) {
    print("Cold weather.");
  } else if (temperature > 20 && temperature <= 30) {
    print("Normal in Temp.");
  } else if (temperature > 30 && temperature <= 40) {
    print("It's Hot.");
  } else {
    print("It's Very Hot.");
  }

  //Q6
  String alphabet = 'A';

  alphabet = alphabet.toLowerCase();

  // Check for vowels
  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print("Vowel");
  } else {
    print("Consonant");
  }

  //Q7
  int customerId = 1001;
  String customerName = "James";
  int unitsConsumed = 800;

  double billAmount;
  if (unitsConsumed <= 199) {
    billAmount = unitsConsumed * 1.20;
  } else if (unitsConsumed <= 400) {
    billAmount = 199 * 1.20 + (unitsConsumed - 199) * 1.50;
  } else if (unitsConsumed <= 600) {
    billAmount = 199 * 1.20 + 200 * 1.50 + (unitsConsumed - 400) * 1.80;
  } else {
    billAmount =
        199 * 1.20 + 200 * 1.50 + 200 * 1.80 + (unitsConsumed - 600) * 2.00;
  }

  print("Customer IDNO : $customerId");
  print("Customer Name : $customerName");
  print("unit Consumed : $unitsConsumed");
  print("Amount Charges @Rs. 2.00 per unit : ${billAmount.toStringAsFixed(2)}");
  print("Net Bill Amount : ${billAmount.toStringAsFixed(2)}");
}
