import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final num index;
  Question(this.questionText, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        '$index) $questionText',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
