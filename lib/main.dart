import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Lee', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Lee', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  // String test() {
  //   return '';
  //   // print('asdasdasd!');
  // }

  // int test2() {
  //   return 1;
  // }

  @override
  Widget build(BuildContext context) {
    // questions.add({'questionText': 'asdasd', 'answers': ['asdad']});
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: this._questionIndex < this._questions.length
            ? Quiz(
                answerQuestion: this._answerQuestion,
                questions: this._questions,
                questionIndex: this._questionIndex)
            : Container(
                child: Center(
                  child: Result(this._totalScore, this._resetQuiz),
                ),
              ),
      ),
    );
  }
}
