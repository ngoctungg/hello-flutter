import 'package:flutter/material.dart';
import 'package:hello_flutter/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.questions[this.questionIndex]['questionText']),
        ...(this.questions[this.questionIndex]['answer']
                as List<Map<String, Object>>)
            .map((e) => Answer(e['text'], () => answerQuestion(e['score']))),
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
    );
  }
}
