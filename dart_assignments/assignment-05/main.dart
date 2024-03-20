void main() {
  // Q.1: Write a Dart program to create a list of your favorite fruits and print them in alphabetical order.

  print("Q1: ");
  List<String> favFruits = ["Banana", "Pineapple", "Strawberry", "Apple"];
  favFruits.sort();
  print("Favorite fruits are ${favFruits}\n");

  // Q.2: Create a list of even numbers from 1 to 20 and print them.

  print("Q2: ");
  List<num> evenNumbers = [2, 3, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  print('Even numbers list: ${evenNumbers}\n');

  // Q.3: Write a Dart program to remove all duplicate elements from a given list of numbers.
  print("Q3: ");
  List<num> duplicateNumbers = [52, 3, 6, 3, 2, 6, 32, 6, 3, 26, 32, 6];
  List<num> uniqueData = duplicateNumbers.toSet().toList();
  print("List after removing duplicates: ${uniqueData}\n");

  // Q.4: Write a Dart program to check if a given list is empty or not.
  print("Q4: ");
  List<String> studentNames = ["Bilal", "Arham", "Hussain"];
  if (studentNames.isEmpty) {
    print('List is Empty\n');
  } else {
    print('List is Not Empty\n');
  }

  // Q.5: Create two lists of numbers and merge them into a single list. Print the merged list.
  print("Q5: ");
  List<String> studentNames1 = ["Bilal", "Arham", "Hussain"];
  List<String> studentNames2 = ["Khizer", "Askari", "Ebad"];
  List<String> mergedList = studentNames1 + studentNames2;

  print("Merged list: ${mergedList}\n");

  //Q.6: Write a Dart program to create a map representing a student's information including name, age, and grade. Print out all the information stored in the map.
  print("Q6: ");
  Map studentInfo = {
    "name": "Arham",
    "age": 25,
    "class": "Flutter",
    "nationality": "Pakistani"
  };
  print("Student name: ${studentInfo['name']}");
  print("Student age: ${studentInfo['age']}");
  print("Student class: ${studentInfo['class']}");
  print("Student nationality: ${studentInfo['nationality']}\n");

  //Q.7: Write a Dart program to create a map representing a student's information including name, age, and grade. Print out all the information stored in the map.
  print("Q7 is same as Q6\n");

  // Q.8: Create a map representing the population of different cities. Write a Dart program to find and print the city with the highest population.
  print("Q8: ");

  Map cities = {
    "karachi": 53223,
    "lahore": 353,
    "faislabad": 223,
    "islamabad": 6326
  };
  List sortedCities = cities.values.toList();
  sortedCities.sort();
  List pupolatedSortCities = sortedCities.reversed.toList();
  print(pupolatedSortCities);
}
