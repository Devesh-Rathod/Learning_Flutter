import 'dart:html';

import 'package:catalogapp/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final  List <Map < String, Object>> _question;
  final int answer;
   Quiz(this._question, this.answerQuestion, this.answer);
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            
            Question(_question[answer]['questionText'] as String),
            const SizedBox(height: 12,),
            ...(_question[answer]['answers'] as List<Map<String, Object>>).map((answer) {
                  return Answer(() => answerQuestion(answer['score'] as int), answer['title'] as String);
            }).toList()
          ],
        );
  }
}