import 'package:flutter/material.dart';

import 'package:fc_survey/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite dog breed?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survey App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_qIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() => _qIndex++);
    print(_qIndex);
  }
}
