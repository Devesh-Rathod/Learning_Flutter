// ignore_for_file: prefer_const_constructors

import 'package:catalogapp/quiz.dart';
import 'package:catalogapp/result.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var answer = 0;
  static var _totalScore = 0;
  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      answer += 1;
    });
  }

  final _question = const [
    {
      'questionText': 'What is your name ?',
      'answers': [
        {'title': 'Devesh', 'score ': 100},
        {'title': 'Fen', 'score': 20},
        {'title': 'Safa', 'score' : 80},
        {'title' : 'Daka', 'score' : 50}
      ]
    },
    {
      'questionText': 'What is your favourite color ? ',
      'answers': [
        {'title': 'black', 'score ': 100},
        {'title': 'green', 'score': 20},
        {'title': 'blue', 'score' : 80},
        {'title' : 'white', 'score' : 50}
      ]
    },
    {
      'questionText': 'Who is your favourite animal ? ',
      'answers': [
        {'title': 'hen', 'score ': 100},
        {'title': 'whale', 'score': 20},
        {'title': 'dog', 'score' : 80},
        {'title' : 'cheetah', 'score' : 50}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
              width: double.infinity,
              child: Text(
                'My App',
                textAlign: TextAlign.center,
              )),
        ),
        body: answer < _question.length
            ? Quiz(  _question,   answerQuestion,   answer)
            : Result(_totalScore),
      ),
    );
  }
}
