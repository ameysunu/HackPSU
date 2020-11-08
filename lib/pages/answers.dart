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
          height: 190,
          width: 190,
          child: Card(
            color: HexColor('#EF5596'),
            child: Center(
                child: Text(
              answertext,
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        ),
        onTap: answerfun,
      ),
      // child: RaisedButton(
      //     color: HexColor('#FF855E'),
      //     textColor: Colors.black87,
      //     child: Text(
      //       answertext,
      //       style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
      //     ),
      //     onPressed: answerfun),
    );
  }
}
