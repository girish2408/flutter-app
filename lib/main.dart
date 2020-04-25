 import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';


void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text('First app'),),
       body: Column(children: [
         Text('Question 1'),
         RaisedButton(child: Text('Answer 1'), onPressed: null,),
         RaisedButton(child: Text('Answer 2'), onPressed: null,),
         RaisedButton(child: Text('Answer 3'), onPressed: null,)
       ],)
    ),);
  }

}