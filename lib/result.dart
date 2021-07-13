import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalSorce;
  final Function resetQuiz;

  Result(this.totalSorce, this.resetQuiz);

  String get resultPhase {
    return "DONE !!!" + totalSorce.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"),
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(Colors.amberAccent.shade100)),
          )
        ],
      ),
    );
  }
}
