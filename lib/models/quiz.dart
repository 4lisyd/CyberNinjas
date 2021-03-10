import 'package:flutter/cupertino.dart';

class Quiz extends ChangeNotifier {
  var quizzes = {
    // 'what is the capital of pakistan?': {
    //   'islamabad': true,
    //   'rawalpindi': false,
    //   'lahore': false
    // }

    'question': 'what is the capital of Pakistan?',
    'answers': ['islambad', 'rawalpindi', 'lahore'],
    'answer': 'islamabad',
    'answered': {'islamabad': false, 'rawalpindi': false, 'lahore': false}
  };
}
