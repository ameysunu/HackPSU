import 'package:flutter/material.dart';
import 'package:hackpsu/pages/answers.dart';
import 'package:hackpsu/pages/result.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/questions.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _questionIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  var questions = [
    "The metal whose salts are sensitive to light is ?",
    "The device used for measuring altitudes is ?",
    "The Gate way of India is ?",
    "The first chairman of the Atomic Energy Commission was ?",
    " D.D.T. was invented by ? "
  ];
  var ans1 = [
    {"text": "Silver", "score": 10},
    {"text": "Ammeter", "score": 0},
    {"text": "Goa", "score": 0},
    {"text": "Dr.H.J.Bhabha", "score": 10},
    {"text": "Rudeolf", "score": 0}
  ];
  var ans2 = [
    {"text": "Gold", "score": 0},
    {"text": "Altimeter", "score": 10},
    {"text": "Kolkata", "score": 0},
    {"text": "Dr.Vikram Sarabhai", "score": 0},
    {"text": "Dalton", "score": 0}
  ];
  var ans3 = [
    {"text": "Alumunium", "score": 0},
    {"text": "Galvanometer", "score": 0},
    {"text": "Mumbai", "score": 10},
    {"text": "Dr.A.P.J.Abdul Kalam", "score": 0},
    {"text": "Mosle", "score": 10}
  ];
  var ans4 = [
    {"text": "Alumunium", "score": 0},
    {"text": "Galvanometer", "score": 0},
    {"text": "Mumbai", "score": 10},
    {"text": "Dr.A.P.J.Abdul Kalam", "score": 0},
    {"text": "Mosle", "score": 10}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz",
            style: TextStyle(fontFamily: 'SourceSansPro'),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: HexColor('#AD2DA8'),
        ),
        backgroundColor: HexColor('#EBBF6A'),
        body: _questionIndex < 5
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Questions(questions.elementAt(_questionIndex)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Answers(
                            () => _answerQuestion(
                                ans1.elementAt(_questionIndex)['score']),
                            ans1.elementAt(_questionIndex)['text']),
                        Answers(
                            () => _answerQuestion(
                                ans2.elementAt(_questionIndex)['score']),
                            ans2.elementAt(_questionIndex)['text']),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Answers(
                            () => _answerQuestion(
                                ans3.elementAt(_questionIndex)['score']),
                            ans3.elementAt(_questionIndex)['text']),
                        Answers(
                            () => _answerQuestion(
                                ans4.elementAt(_questionIndex)['score']),
                            ans4.elementAt(_questionIndex)['text']),
                      ],
                    )
                  ],
                ),
              )
            : Result(totalScore));
  }
}
