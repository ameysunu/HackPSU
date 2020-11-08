import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Answers extends StatelessWidget {
  final Function answerfun;
  final String answertext;

  Answers(this.answerfun, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Container(
          height: 170,
          width: 170,
          child: Card(
            color: HexColor('#EF5596'),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                answertext,
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
        ),
        onTap: answerfun,
      ),
    );
  }
}
