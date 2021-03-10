import 'package:flutter/material.dart';

class QuizModule extends StatefulWidget {
  String question;
  List<String> possibleAnswers;

  QuizModule(this.question, this.possibleAnswers);

  @override
  _QuizModuleState createState() => _QuizModuleState();
}

class _QuizModuleState extends State<QuizModule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.question,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 50,
          ),
          for (String answer in widget.possibleAnswers)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(answer),
                Checkbox(
                  value: true,
                  onChanged: (value) {
                    if (value == true) {
                    } else {}
                  },
                ),
              ],
            )
        ],
      ),
    );
  }
}
