import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 9},
        {'text': 'Green', 'score': 8},
        {'text': 'Orange', 'score': 10},
        {'text': 'White', 'score': 7},
      ]
    },
    {
      'question': 'What\'s your favorite dog breed?',
      'answers': [
        {'text': 'German Shepherd Dog', 'score': 10},
        {'text': 'German Shepherd Dog', 'score': 10},
        {'text': 'German Shepherd Dog', 'score': 10},
        {'text': 'German Shepherd Dog', 'score': 10},
      ]
    },
    {
      'question': 'Who\'s your favorite Star Wars hero?',
      'answers': [
        {'text': 'Obi-Wan Kenobi', 'score': 10},
        {'text': 'Luke Skywalker', 'score': 9},
        {'text': 'Princess Leia', 'score': 8},
        {'text': 'Han Solo', 'score': 8},
        {'text': 'Chewbacca', 'score': 7},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Survey App'),
        ),
        body: (_qIndex < _questions.length)
            ? Quiz(
                question: _questions[_qIndex],
                answerFunc: _answerQuestion,
              )
            : Result(_totalScore),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _qIndex++);
  }
}
