import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  var questions = ["A", "B"];
  void answerQuestion() {
    if (this.questionIndex == questions.length - 1) return;
    setState(() {
      this.questionIndex = this.questionIndex + 1;
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
            Text(this.questions[this.questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("btn1"),
            ),
            RaisedButton(
              onPressed: () => {},
              child: Text("btn1"),
            ),
            ElevatedButton(
              onPressed: () => {},
              child: Text("btn1"),
            ),
          ],
        ),
      ),
    );
  }
}
