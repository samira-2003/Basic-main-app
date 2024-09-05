import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String InputQuestions;
  Question(this.InputQuestions);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Text(InputQuestions,
            style: TextStyle(fontSize: 25), textAlign: TextAlign.center));
  }
}
