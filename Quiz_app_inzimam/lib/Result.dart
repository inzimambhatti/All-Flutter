import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandlar;
  String get resultPhrase {
    var resultText = 'you did dit';
    if (totalScore <= 15) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 20) {
      resultText = 'You are likeable!';
    } else if (totalScore <= 25) {
      resultText = 'You are ... Strange!';
    } else {
      resultText = 'You are Really bad...!';
    }
    return resultText;
  }

  Result(this.totalScore, this.resetHandlar);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Reset Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetHandlar,
          ),
        ],
      ),
    );
  }
}
