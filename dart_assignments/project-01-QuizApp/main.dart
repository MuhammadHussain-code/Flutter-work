import 'dart:io';
import 'dart:math';

import 'db.dart';

int QuestionsCount = 4;
void main() {
  print('Welcome to the Quiz App!');
  String name = takeUsername();

  while (name.isEmpty) {
    print('Name cannot be empty. Please enter your name.');
    name = takeUsername();
  }

  handleQuiz(name);
}

String takeUsername() {
  print('Please enter your name:');
  String name = stdin.readLineSync() ?? '';
  return name;
}

List<Map<String, String>> getRandomQuestions(
    List<Map<String, String>> questions, int count) {
  if (count > questions.length) {
    throw ArgumentError(
        'Count cannot be greater than the total number of questions');
  }

  Random random = Random();
  List<Map<String, String>> selectedQuestions = [];
  Set<int> uniqueSet = Set();

  while (uniqueSet.length < count) {
    int index = random.nextInt(questions.length);
    if (!uniqueSet.contains(index)) {
      uniqueSet.add(index);
      selectedQuestions.add(questions[index]);
    }
  }

  return selectedQuestions;
}

void handleQuiz(String name) {
  List<Map<String, String>> selectedQuestions =
      getRandomQuestions(Questions, QuestionsCount);

  int score = 0;
  int totalQuestions = selectedQuestions.length;

  for (int i = 0; i < totalQuestions; i++) {
    print('\nQuestion ${i + 1}:');
    Map<String, String> question = selectedQuestions[i];
    print("${question['question']}");
    print("Select an option:");
    print("A: ${question['A']}");
    print("B: ${question['B']}");
    print("C: ${question['C']}");
    print("D: ${question['D']}\n");
    String answer = stdin.readLineSync()?.toLowerCase() ?? '';

    if (answer == 'a' || answer == 'b' || answer == 'c' || answer == 'd') {
      if (answer == question['answer']!.toLowerCase()) {
        score++;
      }
    } else {
      print('\nInvalid option. Please select a valid option (A, B, C, or D).');
      i--;
    }
  }

  double Percentage = (score / totalQuestions) * 100;

  print('\nQuiz completed!');
  print('Name: $name');
  print('Score: $score/$totalQuestions');
  print('Percentage Score: $Percentage%');

  print('Do you want to try again? (yes/no)\n');
  String tryAgain = stdin.readLineSync()?.toLowerCase() ?? '';

  if (tryAgain == 'yes' || tryAgain == 'y' || tryAgain == 'a') {
    handleQuiz(name);
  } else {
    print('\nThank you for playing the Quiz App!');
  }
}
