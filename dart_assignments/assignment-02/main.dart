void main() {
  // Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
  // i.e: if both values are equal then it's square otherwise rectangle.

  int length = 5;
  int breadth = 3;

  if (length == breadth) {
    print("It's a square!");
  } else {
    print("It's a rectangle.");
  }

  // Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.

  int age1 = 30;
  int age2 = 25;

  if (age1 > age2) {
    print("The oldest is $age1 and the youngest is $age2.");
  } else if (age1 < age2) {
    print("The oldest is $age2 and the youngest is $age1.");
  } else {
    print("Both are the same age: $age1.");
  }

// Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?
  
  int classesHeld = 16;
  int classesAttended = 10;

  double attendancePercentage = (classesAttended / classesHeld) * 100;

  if (attendancePercentage >= 75) {
    print("Student is allowed to sit in the exam.");
  } else {
    print("Student is not allowed to sit in the exam due to low attendance.");
  }

  
  // Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
  // If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
  // i.e: Use % ( modulus ) operator.

  int year = 2024;

  if (year % 4 == 0) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }


// Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

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


  // Q.6: Write a program to check whether an alphabet is a vowel or consonant.

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


// Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00


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
