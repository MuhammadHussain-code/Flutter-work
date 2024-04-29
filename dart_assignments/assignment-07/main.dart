void main() {
  print("\nQ1: ");
// Q1. Write a program that prints the
// Fibonacci sequence up to a given number using a for loop.

// Example:
// Input:
// 10

// Output:
// 0 1 1 2 3 5 8

  int n = 10;

  int a = 0;
  int b = 1;

  print(a);
  print(b);

  for (int i = 2; i < n; i++) {
    int c = a + b;
    a = b;
    b = c;
    if (c > n) {
      break;
    }
    print(c);
  }

  print("\nQ2: ");
// Q2.  Implement a code that finds the
// largest element in a list using a for loop.

// Example:
// Input:
// [3, 9, 1, 6, 4, 2, 8, 5, 7]

// Output:
// Largest element: 9

  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  print("Largest element: $max");

  print("\nQ3: ");
// Q3. Write a program that prints the
// multiplication table of a given number using a for loop.

// Example: Input: 5

// Output:
// 5 x 1= 5

// 5 x 2= 10

  int number = 5;
  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number x $i = $result");
  }

  print("\nQ4: ");
// Q4. Implement a function that checks if a given string is a
// palindrome.

// Example:

// Input:
// "radar"

// Output:
// "radar" is a palindrome.

  String str = "madam";
  String reversedStr = str.split('').reversed.join('');
  print(str == reversedStr
      ? "$str is a palindrome."
      : "$str is not a palindrome.");

  print("\nQ5: ");
// Q5. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like :
//  1
//  22
//  333
//  4444

  for (int i = 1; i <= 4; i++) {
    for (int j = i; j <= i; j++) {
      print(i.toString() * j);
      break;
    }
  }

  print("\nQ6: ");
// Q6. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.

  List<int> newNumbers = [1, 3, 6, 8, 2, 4, 7, 9];
  for (int number in newNumbers) {
    if (number > 5) {
      print(number);
    }
  }

  print("\nQ7: ");
// Q7.  Write a program that counts the
// number of vowels in a given string using a for loop and if-else condition.

  String str1 = "hello world";
  int count = 0;
  for (int i = 0; i < str1.length; i++) {
    if (str1[i] == 'a' ||
        str1[i] == 'e' ||
        str1[i] == 'i' ||
        str1[i] == 'o' ||
        str1[i] == 'u') {
      count++;
    }
  }
  print("Number of vowels: $count");
}
