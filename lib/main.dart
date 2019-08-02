import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
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
            Text('Question...'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 1 chosen...'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen...'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 chosen...'),
            ),
          ],
        ),
      ),
    );
  }
}
