import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final double totalScore;
  const Result({this.reset, this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Congrats!! You have completed the quiz.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your total score is $totalScore",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.yellow[700],
            textColor: Colors.black,
            onPressed: reset,
            child: Text("Reset Quiz"),
          )
        ],
      ),
    );
  }
}
