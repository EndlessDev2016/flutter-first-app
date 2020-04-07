import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuizHandler;

  Result(this.resultScore, this.restartQuizHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (this.resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (this.resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (this.resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: restartQuizHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
