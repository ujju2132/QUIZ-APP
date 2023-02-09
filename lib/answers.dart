import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;

  Answer(this.onPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue, foregroundColor: Colors.black87),
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
