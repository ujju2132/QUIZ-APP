import 'package:flutter/cupertino.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(questionText, 
        style: TextStyle (fontSize: 28),
      ),
    );
  }
}
