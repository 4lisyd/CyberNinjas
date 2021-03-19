import 'package:flutter/cupertino.dart';

class Quiz extends ChangeNotifier {
  // level 1

  List quizzes1 = [
    {
      'question': 'what is the capital of Pakistan?',
      'answers': ['islamabad', 'rawalpindi', 'lahore'],
      'answer': 'islamabad',
      'answered': {'islamabad': false, 'rawalpindi': true, 'lahore': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation animal of Pakistan?',
      'answers': ['markhor', 'chakor', 'deer'],
      'answer': 'chakor',
      'answered': {'markhor': false, 'chakor': true, 'deer': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation sports of Pakistan?',
      'answers': ['cricket', 'hockey', 'football'],
      'answer': 'hockey',
      'answered': {'cricket': false, 'hockey': true, 'football': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation poet of Pakistan?',
      'answers': ['allama iqbal', 'muhammad ali', 'monto'],
      'answer': 'allama iqbal',
      'answered': {'allama iqbal': false, 'muhammad ali': true, 'monto': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation hero of Pakistan?',
      'answers': ['muhammad ali', 'elon musk', 'hero zero'],
      'answer': 'muhammad ali',
      'answered': {'muhammad ali': false, 'elon musk': true, 'hero zero': false}

      //wrong logic i think
    },
  ];

//level 2

  List quizzes2 = [
    {
      'question': 'what is the capital of Pakistan?',
      'answers': ['islamabad', 'rawalpindi', 'lahore'],
      'answer': 'islamabad',
      'answered': {'islamabad': false, 'rawalpindi': true, 'lahore': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation animal of Pakistan?',
      'answers': ['markhor', 'chakor', 'deer'],
      'answer': 'chakor',
      'answered': {'markhor': false, 'chakor': true, 'deer': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation sports of Pakistan?',
      'answers': ['cricket', 'hockey', 'football'],
      'answer': 'hockey',
      'answered': {'cricket': false, 'hockey': true, 'football': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation poet of Pakistan?',
      'answers': ['allama iqbal', 'muhammad ali', 'monto'],
      'answer': 'allama iqbal',
      'answered': {'allama iqbal': false, 'muhammad ali': true, 'monto': false}

      //wrong logic i think
    },
    {
      'question': 'what is nation hero of Pakistan?',
      'answers': ['muhammad ali', 'elon musk', 'hero zero'],
      'answer': 'muhammad ali',
      'answered': {'muhammad ali': false, 'elon musk': true, 'hero zero': false}

      //wrong logic i think
    },
  ];
  int getQuizzesLength() {
    return quizzes1.length;
  }

  dynamic notify() {
    notifyListeners();
  }

  dynamic answerTick(
      dynamic answers, dynamic answer, dynamic questionIndex, bool value) {
    for (var item in quizzes1[quizzes1.indexOf(questionIndex)]['answers']) {
      print(item);
      if (item == answer) {
        quizzes1[quizzes1.indexOf(questionIndex)]['answered'][item] = true;
      } else {
        quizzes1[quizzes1.indexOf(questionIndex)]['answered'][item] = false;
      }
    }
    notifyListeners();
  }

  void submitQuiz(int level) {
    // todo: apply logic for level of quizzes
    // quizzes = quizzes
    int totalMarks = quizzes1.length;
    // int totalMarks = quizzes${level.toString()}.length;
    int obtainedMarks = 0;

    for (var question in quizzes1) {
      if (question['answered']['${question['answer']}']) {
        print('sds');
        obtainedMarks += 1;
      }
    }
    print(" obtained marks  " + obtainedMarks.toString());
    print("total marks " + totalMarks.toString());
    notifyListeners();
  }
}
