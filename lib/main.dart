import 'package:flutter/material.dart';
import 'package:flutter_practise_course/answer.dart';
import 'questions.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What\'s your favorite animal?',
        'answerText': ['Lion','Tiger','Cheetah','Leopard']
      },
      {
        'questionText': 'What\'s your favorite color?',
        'answerText': ['Black','Blue','Red','White']
      },
      {
        'questionText': 'What\'s your favorite snacks?',
        'answerText': ['Chips','Biscuits','Nachos','Sweets']
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First app'),
          ),
          body: Column(
            children: [
              MyQuestion(question[_questionIndex]['questionText']),
              ...(question[_questionIndex]['answerText'] as List<String>).map((answer) {
                  return MyAnswer(_answerQuestion,answer);
              }).toList()
            ],
          )),
    );
  }
}
