import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final resultScore;
  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          child: Text(resultScore),
          
        );
  }
}