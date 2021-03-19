import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Learner extends ChangeNotifier {
  String name;
  int quizLevel = 1;
  List<dynamic> awards = [];
}
