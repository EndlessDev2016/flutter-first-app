import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
    
  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text(
                'Answer 1',
              ),
              onPressed: answerQuestion,
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
