import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function Stateholder;
  final String answerText;
  Answer(this.Stateholder, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            child: Text(answerText),
            onPressed: Stateholder,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue))));
  }
}
