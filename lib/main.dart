import 'package:flutter/material.dart';
import 'package:fluttercompleteguide/quiz.dart';
import 'package:fluttercompleteguide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _position = 0;
  var _score = 0;
  final _question = const [
    {
      "question": "What\'s your favourite color?",
      "answers": [
        {"text": "Red", "score": 1},
        {"text": "Green", "score": 23},
        {"text": "Blue", "score": 6},
        {"text": "Yellow", "score": 4}
      ]
    },
    {
      "question": "What\'s your favourite animal?",
      "answers": [
        {"text": "Elephant", "score": 23},
        {"text": "Rat", "score": 7},
        {"text": "Zebra", "score": 2},
        {"text": "Dog", "score": 8}
      ]
    },
    {
      "question": "Who\'s your favourite singer?",
      "answers": [
        {"text": "Ed Sheren", "score": 21},
        {"text": "Taylor Swift", "score": 23},
        {"text": "Enrique", "score": 1}
      ]
    },
  ];

  void restartQuiz() {
    setState(() {
      _position = 0;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    void _answerQuestion(int score) {
      setState(() {
        _position = _position + 1;
        _score += score;
      });
      if (_position < _question.length) {}
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_position < _question.length)
            ? Quiz(_question, _position, _answerQuestion)
            : Result(_score, restartQuiz),
      ),
    );
  }
}
