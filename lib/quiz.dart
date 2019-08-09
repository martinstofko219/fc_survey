import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function(int) answerFunc;

  Quiz({@required this.question, @required this.answerFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question['question']),
        SizedBox(height: 24.0),
        ...(question['answers'] as List<Map<String, dynamic>>)
            .map((Map<String, dynamic> a) =>
                Answer(a['text'], () => answerFunc(a['score'])))
            .toList(),
      ],
    );
  }
}
