import 'dart:convert';

import 'package:cyber_ninjas/components/buttons.dart';
import 'package:cyber_ninjas/components/pageRouteBuilder.dart';
import 'package:cyber_ninjas/components/quiz_module.dart';
import 'package:cyber_ninjas/models/quiz.dart';
import 'package:cyber_ninjas/screens/homescreens/home_profile.dart';
import 'package:cyber_ninjas/screens/homescreens/home_trophies.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTest extends StatefulWidget {
  @override
  _HomeTestState createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // Quiz quiz = Quiz();
    var quiz_bloc = Provider.of<Quiz>(context, listen: true);
    var quiz_bloc_NL = Provider.of<Quiz>(context, listen: false);
    // print(context.read<Quiz>().quizzes.entries.length);
    // for (var quiz in context.read<Quiz>().quizzes.entries) {
    //   // print(quiz.valu);
    // }

    // print(Map<String, dynamic>.from(quiz_bloc_NL.quizzes[0]));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.srcOver),
                  child: Image.asset(
                    "lib/assets/screenComponents/birdsTriangleCorner.jpg",
                    colorBlendMode: BlendMode.dstATop,
                  ),
                ),
              ),
            ),
            Positioned(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor.withOpacity(.4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          for (var question in quiz_bloc.quizzes1)
                            Column(
                              children: [
                                Divider(
                                  thickness: 4,
                                ),
                                Text(
                                  question['question'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(
                                    fontSize: 25,
                                    shadows: [
                                      Shadow(
                                        color: Theme.of(context).accentColor,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                for (var answers in question['answers'])
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        answers,
                                        maxLines: 10,
                                      ),
                                      Text(
                                        question['answered'][answers]
                                            .toString(),
                                        maxLines: 10,
                                      ),
                                      Checkbox(
                                          value: question['answered'][answers],
                                          onChanged: (value) {
                                            // print(!value);
                                            setState(() {
                                              // question['answered'][answers] =
                                              //     value;
                                              // quiz_bloc.notify();
                                              quiz_bloc.answerTick(
                                                  question['answered'],
                                                  answers,
                                                  question,
                                                  value);
                                            });
                                          })
                                    ],
                                  ),
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),
                          Button1('Submit', () {
                            quiz_bloc_NL.submitQuiz(1);

                            //level 1 quiz
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Icon(
                  Icons.addchart_sharp,
                  size: 40,
                  color: Theme.of(context).canvasColor,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Quiz',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
