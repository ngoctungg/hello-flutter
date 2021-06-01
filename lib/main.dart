import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var _questions = [
    {
      'questionText': 'BuildContext',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'BuildContext2',
      'answer': ['A', 'B']
    }
  ];
  void answerQuestion() {
    if (this._questionIndex == _questions.length - 1) return;
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
        body: Column(
          children: [
            Question(this._questions[this._questionIndex]['questionText']),
            ...(this._questions[this._questionIndex]['answer'] as List<String>)
                .map((e) => Answer(e, answerQuestion)),
            // Answer("Answer 1", answerQuestion),
            // Answer("Answer 2", answerQuestion),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("btn1"),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.amber)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
