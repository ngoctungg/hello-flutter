import 'package:flutter/material.dart';
import 'package:hello_flutter/quiz.dart';
import 'package:hello_flutter/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'BuildContext',
      'answer': [
        {'text': 'A', 'score': 1},
        {'text': 'B', 'score': 2},
        {'text': 'C', 'score': 3},
        {'text': 'D', 'score': 4}
      ]
    },
    {
      'questionText': 'BuildContext2',
      'answer': [
        {'text': 'A', 'score': 5},
        {'text': 'B', 'score': 6},
      ]
    }
  ];

  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    this._totalScore += score;
    setState(() {
      this._questionIndex = this._questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HELLO WORLD'),
        ),
        body: this._questionIndex < this._questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
