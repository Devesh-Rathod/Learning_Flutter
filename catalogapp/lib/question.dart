import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  int answer = 0;
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        question,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center, 
      ),
    );
  }
}