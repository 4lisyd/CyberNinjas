import 'package:cyber_ninjas/models/quiz.dart';
import 'package:cyber_ninjas/screens/homescreens/home_tests.dart';
import 'package:cyber_ninjas/screens/welcome/welcome0.dart';
import 'package:cyber_ninjas/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<Quiz>(create: (_) => Quiz()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberNinjas',
      theme: currentTheme(),
      // home: Start(),
      home: HomeTest(),
    );
  }
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Welcome(),
    );
  }
}
