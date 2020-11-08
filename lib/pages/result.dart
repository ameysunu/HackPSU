import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackpsu/quiz.dart';

class Result extends StatelessWidget {
  final int tscore;

  Result(this.tscore);

  String get results {
    var resultPhrase =
        "I can not be more impressed and grateful with the level of energy, communication,  professionalism, friendliness, expertise and skill .";
    if (tscore <= 30)
      resultPhrase += " Total Score : $tscore \n\n Could have done better!!";
    else if (tscore == 40)
      resultPhrase +=
          " Total Score : $tscore \n\n MANAGEABLE, I expected a perfect score";
    else
      resultPhrase +=
          " Total Score : $tscore \n\n I knew it.. You are awesome:)";
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        results,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
