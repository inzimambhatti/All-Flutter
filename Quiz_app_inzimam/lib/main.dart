import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favouite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Purple', 'score': 20},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favouite Game?',
      'answers': [
        {'text': 'Saap wali', 'score': 5},
        {'text': 'Ludo', 'score': 10},
        {'text': 'Chess', 'score': 15},
        {'text': 'Pubg', 'score': 20}
      ],
    },
    {
      'questionText': 'Who\'s your favouite Person?',
      'answers': [
        {'text': 'Komal', 'score': 20},
        {'text': 'Ali', 'score': 5},
        {'text': 'Ahsan', 'score': 10},
        {'text': 'Mehlub', 'score': 15}
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void resetButton() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Application'),
            ),
            body: _questionIndex < _question.length
                ? Quiz(
                    question: _question,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                : Result(_totalScore, resetButton)));
  }
}
