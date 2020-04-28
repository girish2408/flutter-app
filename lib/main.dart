import 'package:flutter/material.dart';
import 'package:flutter_practise_course/quiz.dart';
import 'package:flutter_practise_course/result.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final question = const [
    {
      'questionText': 'What\'s your favorite animal?',
      'answerText': [
        {'text': 'Lion', 'points': 10},
        {'text': 'Tiger', 'points': 6},
        {'text': 'Cheetah', 'points': 4},
        {'text': 'Leopard', 'points': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Black', 'points': 10},
        {'text': 'Blue', 'points': 6},
        {'text': 'Red', 'points': 4},
        {'text': 'White', 'points': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite snacks?',
      'answerText': [
        {'text': 'Chips', 'points': 10},
        {'text': 'Biscuits', 'points': 6},
        {'text': 'Nachos', 'points': 4},
        {'text': 'Sweets', 'points': 2}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < question.length) {
      print('more questions coming up');
    }
    print(_totalScore);
  }

  void _resetState(){
    setState(() {
       _questionIndex = 0;
    _totalScore = 0;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    //question[0]['questionText'] = 'what your fav animal?';
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: _questionIndex < question.length
          ? MyQuiz(
              question: question,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : MyResult(this._totalScore, _resetState),
    ));
  }
}
