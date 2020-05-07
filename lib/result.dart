import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;
  final _restartQuiz;

  Result(this._score, this._restartQuiz);

  String get resultPhrase {
    String resultText;
    if (_score <= 8) {
      resultText = "You are awsome and innocent";
    } else if (_score <= 20) {
      resultText = "You are just innocent.";
    } else if (_score <= 40) {
      resultText = "You are just human.";
    } else if (_score <= 80) {
      resultText = "Who are you?";
    } else {
      resultText = "You did it!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 13, color: Colors.blue),
            ),
            onPressed: _restartQuiz,
          )
        ],
      ),
    );
  }
}
