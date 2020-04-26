import 'package:flutter/material.dart';

class MyQuestion extends StatelessWidget {
  final String questions;

  MyQuestion(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
    margin: EdgeInsets.all(10),
      child: Text(questions,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ));
  }
}