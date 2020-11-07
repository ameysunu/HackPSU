import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EBBF6A'),
      appBar: AppBar(
        backgroundColor: HexColor('#EBBF6A'),
        automaticallyImplyLeading: false,
        title: Text(
          "Expenses",
          style: TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
        ),
        elevation: 0,
      ),
    );
  }
}
