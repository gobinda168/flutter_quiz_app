import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(questions[questionIndex]["question"], questionIndex + 1),
          ...(questions[questionIndex]['ans'] as List<Map<String, Object>>)
              .map((ans) {
            return Answer(() => answerQuestion(ans['score']), ans['text']);
          }).toList()
        ],
      ),
    );
  }
}
