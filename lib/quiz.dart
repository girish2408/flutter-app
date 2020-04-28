import 'package:flutter/material.dart';
import 'package:flutter_practise_course/questions.dart';

import 'answer.dart';

class MyQuiz extends StatelessWidget {
final question;
final questionIndex;
final Function answerQuestion;

  MyQuiz({@required this.question,@required this.questionIndex,@required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              MyQuestion(question[questionIndex]['questionText']),
              ...(question[questionIndex]['answerText'] as List<Map<String,Object>>).map((answer) {
                  return MyAnswer(() => answerQuestion(answer['points']),answer['text']);
              }).toList()
            ],
          )
    );
  }
}