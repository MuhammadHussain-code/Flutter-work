void main() {
  int length = 15;
  int breadth = 19;
  int area = length * breadth;
  print("Area of the rectangle is $area");

  int someNum = 7;
  var result = (someNum + 8) / 3 % 5 * 5;
  print("result is $result");

  int a = 32;
  int b = 21;
  var firstCondition = a < 50;
  var secondCondition = a < b;

  print(firstCondition);
  print(secondCondition);

  String studentName = "M Hussain";
  print("Student name is $studentName");
  double percentage = calculatePercentage(78, 45, 62);
  print("$studentName percentage is ${percentage.toStringAsFixed(2)} %");
  int total = 78 + 45 + 62;
  print("$studentName total marks are $total");
}

double calculatePercentage(int english, int maths, int physics) {
  int totalMarks = 300;
  int obtainedMarks = english + maths + physics;

  return obtainedMarks / totalMarks * 100;
}
