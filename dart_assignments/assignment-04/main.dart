void main() {
  // Q.1: Create a list of names and print all names using list.
  print("Q1:");
  List<String> names = ['Muhammad', 'Hussain', 'Arham'];
  // print('${names[0]}');
  // print('${names[1]}');
  // print('${names[2]}');
  //OR
  for (var i = 0; i < names.length - 1; i++) {
    print('${names[i]}');
  }

  // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  print("Q2:");
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  print("$days");

  // Q.3: Create a list of Days and remove one by one from the end of list.
  print("Q3:");
  List<String> alldays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);
  alldays.removeLast();
  print(alldays);

  //Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  print('Q4:');
  List<num> scores = [12, 24, 5, 25, 12, 54, 12];
  num min = scores[0];
  num max = scores[0];
  scores.forEach((e) => e > max ? max = e : max);
  scores.forEach((e) => e < min ? min = e : min);
  print("smallest number is $min");
  print("greatest number is $max");

  //Q. 5 Given a list of integers, write a dart code that returns the maximum value from the list.
  print('Q5:');
  print("maximum value is $max");
}
