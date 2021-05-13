import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HELLO WORLD'),
        ),
        body: Column(
          children: [
            Text("What is L0 scramhing softw"),
            RaisedButton(
              onPressed: () => {},
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
