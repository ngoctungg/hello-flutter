import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _btnName;
  final VoidCallback _clickedHandler;

  Answer(this._btnName, this._clickedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        onPressed: _clickedHandler,
        child: Text(_btnName),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
