import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function answerFunc;

  Answer(this.text, this.answerFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: Text(text),
        onPressed: answerFunc,
      ),
    );
  }
}
