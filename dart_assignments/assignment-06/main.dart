void main() {
  // Q.1: Create a list of names and print all names using list.

  print("Q1: ");
  List<String> favFruits = ["Banana", "Pineapple", "Strawberry", "Apple"];
  favFruits.sort();
  print("Favorite fruits are ${favFruits}\n");

  // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List<String> days = [];
  print("\nQ2:");
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  print("$days");

  // Q.3: Create a list of Days and remove one by one from the end of list.
  print("\nQ3:");
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  print(days);

  // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  print("\nQ4:");
  List<num> scores = [12, 24, 5, 25, 12, 54, 12];
  num min = scores[0];
  num max = scores[0];
  scores.forEach((e) => e > max ? max = e : max);
  scores.forEach((e) => e < min ? min = e : min);
  print("smallest number is $min");
  print("greatest number is $max");

  //  Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  print("\nQ5:");
  Map person = {"name": "Hussain", "phone": "34235898", "keys": "123"};
  List length4 = person.keys.where((element) => element.length == 4).toList();
  print(length4);

  // Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
  print("\nQ6:");
  Map world = {
    "pakistan": {
      "currency": "pkr",
      "capital": "Islamabad",
      "population": 22512,
      "language": "urdu"
    },
    "usa": {
      "currency": "usd",
      "capital": "Washington D.C.",
      "population": 3310000,
      "language": "english"
    },
    "china": {
      "currency": "cny",
      "capital": "Beijing",
      "population": 14393,
      "language": "chineese"
    }
  };
  print("${world["usa"]["currency"]}\n${world["usa"]["language"]}");

  // Q.7: Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  print("\nQ7:");
  expenses.putIfAbsent('fri', () => 5000.0);
  print(expenses);

  // Q.8: remove all false values from below list by using removeWhere or retainWhere property.
  print("\nQ8:");

  List<Map> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.retainWhere((element) => element['eligible'] == true);
  print(usersEligibility);

  // Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.
  print("\nQ9:");

  List<num> numbers = [12, 24, 5, 25, 12, 54, 12];
  num maxNum = scores[0];
  numbers.forEach((e) => e > max ? max = e : max);
  print("Max number is $maxNum");

  // Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  print("\nQ10:");
  List<num> duplicateNumbers = [52, 3, 6, 3, 2, 6, 32, 6, 3, 26, 32, 6];
  List<num> uniqueData = duplicateNumbers.toSet().toList();
  print("List after removing duplicates: ${uniqueData}\n");

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
  print("\nQ11:");
  List birds = ['sparrow', 'eagle', 'cocktail', 'crow'];
  String n = 'duck';
  birds.insert(0, n);
  print(birds);

  // Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
  print("\nQ12:");
  List birds1 = ['sparrow', 'eagle', 'cocktail', 'crow'];
  print(birds1.reversed.toList());

  // Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
  print("\nQ13:");
  List<num> duplicateNumbers1 = [52, 3, 6, 3, 2, 6, 32, 6, 3, 26, 32, 6];
  List<num> uniqueData1 = duplicateNumbers1.toSet().toList();
  print("Unique elements are: ${uniqueData1}\n");

  // Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.
  print("\nQ14:");
  List<String> favFruits1 = ["Banana", "Pineapple", "Strawberry", "Apple"];
  List<String> favFruitsClone = []..addAll(favFruits1);

  favFruitsClone.sort();
  print("Sorted ${favFruitsClone}\nOriginal ${favFruits1}");

  // Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.
  print("\nQ15:");
  List<int> integers = [2, 23, 43, -35, 32, -2, 4, 24, -1];
  List<int> positiveIntegers =
      integers.where((element) => element > 0).toList();

  print("${positiveIntegers}");

  // Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.
  print("\nQ16:");
  List<int> evenOdd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  List<int> evens = evenOdd.where((e) => e % 2 == 0).toList();
  print("Even numbers ${evens}");

  // Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.
  print("\nQ17:");
  List<int> myNums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  List<int> squared = myNums.map((e) => e * e).toList();
  print("Squared numbers ${squared}");

  // Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".
  print("\nQ18:");
  Map person1 = {"name": "John", "age": 25, "isStudent": true};
  String check = (person1["isStudent"] && person1["age"] >= 18)
      ? 'Eligible'
      : 'Not eligible';
  print("Person1 is ${check}");

  // Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
  print("\nQ19:");
  Map product = {"name": "keyboard", "price": 199, "quantity": 3};

  String availability = product["quantity"] > 0 ? 'In stock' : 'Out of stock';
  print('Product is ${availability}');

  // Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".
  print("\nQ20:");
  Map car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };
  print(car['isSedan'] && car['color'] == "Red" ? 'Match' : 'No match');

  // Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
  print("\nQ21:");
  Map user = {
    "name": "Arham",
    "isAdmin": false,
    "isActive": true,
  };
  print(user['isAdmin'] && user['isActive']
      ? 'Active admin'
      : 'Not an active admin');

  // Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".
  print("\nQ22:");
  Map shoppingCart = {
    "names": "bag",
    "values": 14,
    "quantities": 23,
  };
  print(shoppingCart["name"].toString().toLowerCase() == "apple"
      ? "Apple found!"
      : "Product not found!");
}
