import 'package:flutter/material.dart';
import "./quiz.dart";

import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _score = 0;
  var questionIndex = 0;
  void Reset() {
    setState(() {
      _score = 0;
      questionIndex = 0;
    });
  }

  void _AnswerQuestion(int score) {
    _score += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("Your are out of questions");
    }
  }

  var _questions = [
    {
      'que': 'What do you do the most in your leasure time?',
      'Answer': [
        {'text': 'sing', 'score': 9},
        {'text': 'dance', 'score': 8},
        {'text': 'play', 'score': 10},
        {'text': 'accoustics', 'score': 10},
      ]
    },
    {
      'que': 'If you had a super power what would it be?',
      'Answer': [
        {'text': 'invisiblity', 'score': 10},
        {'text': 'super speed', 'score': 9},
        {'text': 'mind reading', 'score': 8},
        {'text': 'wisdom', 'score': 9}
      ]
    },
    {
      'que': 'what is your favourite color',
      'Answer': [
        {'text': 'red', 'score': 9},
        {'text': 'pink', 'score': 9},
        {'text': 'black', 'score': 9},
        {'text': 'brown', 'score': 9}
      ]
    }
  ];
  void Answers() {
    print('Answer selected');
  }

  Widget build(BuildContext context) {
    // build- used to build the main widget screen and returns a widget
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Personality quiz'),
      ),
      body: questionIndex < _questions.length
          ? Quiz(_questions, _AnswerQuestion, questionIndex)
          : Result(_score, Reset),
    ));
    //class that has container
  }
}
