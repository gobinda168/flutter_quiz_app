import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  double _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questions = [
    {
      "question": "What is your favourite color?",
      "ans": [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 6}
      ]
    },
    {
      "question": "What is your favourite food?",
      "ans": [
        {'text': 'Pizza', 'score': 5},
        {'text': 'Burger', 'score': 6},
        {'text': 'Biryani', 'score': 9},
        {'text': 'Fried Rice', 'score': 1}
      ]
    },
    {
      "question": "What is your favourite Animal?",
      "ans": [
        {'text': 'Dragon', 'score': 13},
        {'text': 'Lion', 'score': 9},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Elephant', 'score': 5}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text(
            "Flutter Demo",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(reset: _resetQuiz, totalScore: _totalScore),
      ),
    );
  }
}
