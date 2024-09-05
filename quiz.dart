import "package:flutter/material.dart";
import "./question.dart";
import "./answers.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function AnswerQuestion;
  final int questionIndex;

  Quiz(@required this.questions, @required this.AnswerQuestion,
      @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['que'] as String),
      ...(questions[questionIndex]['Answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => AnswerQuestion(answer['score']), answer['text'].toString());
      }).toList()
    ]);
  }
}
