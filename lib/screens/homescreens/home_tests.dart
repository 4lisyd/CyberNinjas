import 'dart:convert';

import 'package:cyber_ninjas/components/pageRouteBuilder.dart';
import 'package:cyber_ninjas/components/quiz_module.dart';
import 'package:cyber_ninjas/models/quiz.dart';
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
    Quiz quiz_bloc_NL = Provider.of<Quiz>(context, listen: false);
    print(context.read<Quiz>().quizzes.entries.length);
    // for (var quiz in context.read<Quiz>().quizzes.entries) {
    //   // print(quiz.valu);
    // }

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
              height: MediaQuery.of(context).size.height - 250,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor.withOpacity(.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (value) async {
                      print(pageController);
                    },
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              context
                                  .read<Quiz>()
                                  .quizzes['question']
                                  .toString(),
                            ),
                            for (var answers
                                in context.read<Quiz>().quizzes['answers'])
                              Row(
                                children: [
                                  Text(answers),
                                  Checkbox(value: false, onChanged: (value) {}),
                                ],
                              )
                          ],
                        ),
                      ),
                    ],
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
                  Icons.settings,
                  size: 40,
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
            Positioned(
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).backgroundColor,
                      spreadRadius: 5,
                      offset: Offset(0, 20),
                      blurRadius: 30,
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width - 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context).accentColor,
                                blurRadius: 30,
                                spreadRadius: 2),
                          ],
                          color: Theme.of(context).backgroundColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'take tests',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Expanded(
                      child: Container(
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height / 20 - 2,
                          backgroundColor: Theme.of(context).buttonColor,
                          child: Text(
                            'profile',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'Trophies',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
