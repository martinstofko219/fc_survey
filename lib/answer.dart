import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function answerFunc;

  Answer(this.text, this.answerFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
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
