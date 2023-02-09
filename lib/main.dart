import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './question.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  
  var questionIndex = 0;
  var totalScore = 0;

  void questionAnswer(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  var question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Sumit', 'score': 1},
        {'text': 'Lavi', 'score': 5},
        {'text': 'OP', 'score': 10},
        {'text': 'Yashna', 'score': 1},
      ],
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'this is my first app!',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: questionIndex < question.length
            ? Quiz(
                question: question,
                questionAnswer: questionAnswer,
                questionIndex: questionIndex)
            : Result(totalScore, reset),
      ),
    );
  }
}
