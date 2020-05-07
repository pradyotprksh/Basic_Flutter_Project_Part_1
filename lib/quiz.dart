import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final _question;
  final _position;
  final _answerQuestion;

  Quiz(this._question, this._position, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_question[_position]["question"]),
        ...(_question[_position]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => _answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
