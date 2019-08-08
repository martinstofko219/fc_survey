import 'package:flutter/material.dart';

import 'package:fc_survey/answer.dart';
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
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Blue', 'Green', 'Orange', 'White']
      },
      {
        'question': 'What\'s your favorite dog breed?',
        'answers': [
          'German Shepherd Dog',
          'German Shepherd Dog',
          'German Shepherd Dog',
          'German Shepherd Dog'
        ]
      },
      {
        'question': 'Who\'s your favorite Star Wars hero?',
        'answers': [
          'Obi-Wan Kenobi',
          'Luke Skywalker',
          'Princess Leia',
          'Han Solo'
        ]
      },
    ];

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survey App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_qIndex]['question']),
            ...(questions[_qIndex]['answers'] as List<String>)
                .map((String a) => Answer(a, _answerQuestion))
                .toList(),
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
