import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {
  final int _resultScore;
  final Function resetState;

  MyResult(this._resultScore, this.resetState);

  String get outputResultPhrase {
    String resultText;
    if (this._resultScore <= 10) {
      resultText = 'You scored ${this._resultScore} so you are awesome';
    } else {
      resultText = 'You scored ${this._resultScore} so you are not so awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            outputResultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz'), onPressed: resetState,
          color: Colors.blue  ,
          )
        ],
      ),
    );
  }
}
