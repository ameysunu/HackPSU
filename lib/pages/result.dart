import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackpsu/homewidget.dart';
import 'package:hackpsu/quiz.dart';

class Result extends StatelessWidget {
  final int tscore;

  Result(this.tscore);

  String get results {
    var resultPhrase = "Great work, trying to attempt the quiz";
    if (tscore < 30) {
      resultPhrase +=
          "\nTotal Score: $tscore\n\n But you are'nt still clear with basics. Go back and complete the tutorial once again";
    } else if (tscore == 30) {
      resultPhrase +=
          "\nTotal Score: $tscore\n\n Great work! What are you waiting for? Get your credit card already";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/code.png'), fit: BoxFit.cover)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              results,
              style: TextStyle(fontSize: 20, fontFamily: 'SourceSansPro'),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeWidget()),
              );
            },
          )
        ],
      ),
    );
  }
}
