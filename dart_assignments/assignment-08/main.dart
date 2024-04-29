import 'dart:math';

void main() {
  print('\nQ1: ');
  // Q1. Write a Dart program that counts the number of digits in a given number using a while loop.

  num number = 1234;
  int count = 0;

  while (number != 0) {
    number ~/= 10;
    count++;
  }

  print('Number of digits: $count');

  print('\nQ2: ');
  // Q2. Implement Dart code to generate a random password of a given length using a while loop.

  int length = 8;
  String password = '';
  String characters =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()';

  Random random = Random();
  int i = 0;
  while (i < length) {
    int index = random.nextInt(characters.length);
    password += characters[index];
    i++;
  }

  print('Random Password: $password');

  print("\nQ3: ");
  // Q3. Create a Dart program that checks if a given string is empty or not using if-else statements.

  String str = 'Hello, World!';
  if (str.isEmpty) {
    print('The string is empty.');
  } else {
    print('The string is not empty.');
  }

  print("\nQ4: ");
  // Q4. Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop.

  int sum = 0;
  int number1 = 1;
  do {
    if (number1 % 2 != 0) {
      sum += number1;
    }
    number1++;
  } while (number1 <= 50);
  print('Sum of odd numbers from 1 to 50: $sum');

  print("\nQ5: ");
  // Q5. Create a Dart program that checks if a given number is positive, negative, or zero using if-else statements.

  int givenNum = -10;
  if (givenNum > 0) {
    print('The number is positive.');
  } else if (givenNum < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }

  print("\nQ6: ");
  // Q6. Write a Dart program to calculate the factorial of a given number using a while loop.

  int number2 = 5;
  int savedNumber = number2;
  int factorial = 1;
  while (number2 > 0) {
    factorial *= number2;
    number2--;
  }
  print('Factorial of $savedNumber: $factorial');

  print("\nQ7: ");
  // Q7. Create a Dart program that prints the first 10 prime numbers using a for loop.
  int counter = 0;

  for (int num = 2; counter < 10; num++) {
    // Check if the number is prime
    if (isPrime(num)) {
      print(num);
      counter++;
    }
  }

  print("\nQ8: ");
  // Q8. Implement Dart code to print the first 10 natural numbers in reverse order using a while loop.

  int number3 = 10;
  while (number3 >= 1) {
    print(number3);
    number3--;
  }

  print("\nQ9: ");
  // Q9. Implement Dart code to print the squares of numbers from 1 to 5 using a do-while loop.

  int number4 = 1;
  do {
    int square = number4 * number4;
    print(square);
    number4++;
  } while (number4 <= 5);

  print("\nQ10: ");
  // Q10. Create Dart code to calculate the average of numbers in a list using a do-while loop.

  List<int> numbers = [5, 10, 15, 20, 25];
  int sum1 = 0;
  int count1 = 0;
  do {
    sum1 += numbers[count];
    count1++;
  } while (count1 < numbers.length);
  double average = sum1 / numbers.length;
  print('Average: $average');

  print("\nQ11: ");
  // Q11. Write a Dart program to find the largest digit of a given number using a do-while loop.

  int num1 = 987654321;
  int largestDigit = 0;
  do {
    int digit = num1 % 10;
    if (digit > largestDigit) {
      largestDigit = digit;
    }
    num1 ~/= 10;
  } while (num1 != 0);
  print('Largest digit: $largestDigit');

  print("\nQ12: ");
  // Q12. Write a Dart program to print even numbers from 1 to 20 using a do-while loop

  int number5 = 2;
  do {
    print(number5);
    number5 += 2;
  } while (number5 <= 20);
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
