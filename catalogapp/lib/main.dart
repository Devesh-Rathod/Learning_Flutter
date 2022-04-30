// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'question.dart';
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
  void answerQuestion() {
    setState(() {
      answer += 1;
      if(answer > 3) answer = 0;
    });

  }

  @override
  Widget build(BuildContext context) {
    var _question = [
      'What\'s is your name',
      'My name is devesh',
      'Ok',
      'System called'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children:  [
            Text(_question[answer]),
            ElevatedButton(
              child: Question('First'),
              onPressed: answerQuestion,
            ),
             Text(_question[answer]),
            ElevatedButton(
              child: Question('Second'),
              onPressed: () => answerQuestion(),
            ),
             Text(_question[answer]),
            ElevatedButton(
              child: Question('Third'),
              onPressed: (){
                answerQuestion();
              },
            )
          ],
        ),
      ),
    );
  }
}
