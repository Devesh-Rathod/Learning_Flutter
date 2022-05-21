import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answer;
   Answer(this.answerQuestion, this.answer);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
              //child: Colors.blue,
              
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue) ),
              child: Text(answer),
              onPressed: answerQuestion,
            ),
    );
  }
}