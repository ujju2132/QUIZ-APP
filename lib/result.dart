import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore, this.reset);

  String get resultPhase {
    var resultText = 'you did it hurray!! \n';
    if (resultScore <= 8) {
      resultText += 'you are awesome and innocent!!';
    } else if (resultScore <= 12) {
      resultText += 'you are pretty likeble!';
    } else if (resultScore <= 16) {
      resultText += 'you are ... strange';
    } else {
      resultText += 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: reset, 
          child: Text('Restart Quiz!!', 
          style: TextStyle(color: Colors.lightBlue, 
            fontWeight: FontWeight.bold 
            ),
          ),)
        ],
      ),
    );
  }
}
