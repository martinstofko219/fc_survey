import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultText {
    var result = 'Thanks for filling out the survey.\n\n';
    if (resultScore > 29) {
      result += 'You are an awesome human!';
    } else if (resultScore > 26) {
      result += 'You are a great human!';
    } else {
      result += 'You are an OK human!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      ),
    );
  }
}
