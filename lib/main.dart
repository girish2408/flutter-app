import 'package:flutter/material.dart';
import 'package:flutter_practise_course/quiz.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  final question = const[
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
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < question.length) {
      print('more questions coming up');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    //question[0]['questionText'] = 'what your fav animal?';
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First app'),
          ),
          body: _questionIndex < question.length ? MyQuiz( question: question,
          questionIndex: _questionIndex, answerQuestion: _answerQuestion,):
           Center(child: Text('You did it man!'),),)
    );
  }
}
