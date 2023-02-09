import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function questionAnswer;

    Quiz(
      {required this.question,
      required this.questionAnswer,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => questionAnswer(answer['score']), answer['text']as String);
        }).toList()
      ],
    );
  }
}
