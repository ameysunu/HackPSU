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
    "Why is a card number super long?",
    "Can you share your pin number with anyone?",
    "What do you do with your card when using a bank machine?",
  ];
  var ans1 = [
    {"text": "Cause it makes it easier to remember", "score": 0},
    {"text": "Yes!", "score": 0},
    {"text": "Nothing, you don't need to use it at all", "score": 0},
  ];
  var ans2 = [
    {"text": "Cause it makes it harder to remember", "score": 10},
    {"text": "No!! shhhh...", "score": 10},
    {"text": "You need to type your card number into the machine", "score": 0},
  ];
  var ans3 = [
    {"text": "It's a phone number so it has to be long", "score": 0},
    {"text": " Yeah I can tell my bestfriends", "score": 0},
    {
      "text":
          " You need to place the card into the rectangular hole in the machine",
      "score": 10
    },
  ];
  var ans4 = [
    {"text": " It's not always long", "score": 0},
    {"text": " None of the above", "score": 0},
    {"text": "You need to scan it with the machine", "score": 0},
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
        body: _questionIndex < 3
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
