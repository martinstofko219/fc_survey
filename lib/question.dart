import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
