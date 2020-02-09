import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  __MyAppState createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {
  final questions = const [
    {
      'questionText': 'What\s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'white']
    },
    {
      'questionText': 'What\s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'white']
    },
    {
      'questionText': 'What\s your favorite instructor?',
      'answers': ['Max1', 'Max2', 'Max3', 'Max4']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more qesutions!');
    }
    // _questionIndex += 1;
    // print(_questionIndex);
    // print('Answer choson 1');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            })
          ],
        ),
      ),
    );
  }
}
