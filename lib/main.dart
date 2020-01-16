import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  __MyAppState createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {
   var _questionIndex = 0;

  void _answerQuestion() {
    _questionIndex += 1;
    print(_questionIndex);
    print('Answer choson 1');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\s your favorite color?',
      'What\s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: () => print('answer choson 2'),
            ),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: () {
                print('answer choson 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
