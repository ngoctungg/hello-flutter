import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
      color: Colors.white10,
    );
  }
}
