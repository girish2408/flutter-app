import 'package:flutter/material.dart';

class MyAnswer extends StatelessWidget {
  final Function functionHandler;
  final String answer;
  MyAnswer(this.functionHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(answer),
                onPressed: functionHandler,
              ),
    );
  }
}