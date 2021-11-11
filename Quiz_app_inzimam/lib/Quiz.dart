import 'package:flutter/material.dart';
import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final questionIndex;
  final answerQuestion;
  Quiz(
      {required this.question,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
