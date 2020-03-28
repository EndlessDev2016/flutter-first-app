import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  __MyAppState createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'What\s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 11},
        {'text': 'Cow', 'score': 6},
        {'text': 'monkey', 'score': 8}
      ]
    },
    {
      'questionText': 'What\s your favorite instructor?',
      'answers': [
        {'text': 'Max1', 'score': 1},
        {'text': 'Max2', 'score': 1},
        {'text': 'Max3', 'score': 1},
        {'text': 'Max4', 'score': 1}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more qesutions!');
    } else {
      print('No more questions!');
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
