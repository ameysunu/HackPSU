import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TheyOwe extends StatefulWidget {
  @override
  _TheyOweState createState() => _TheyOweState();
}

class _TheyOweState extends State<TheyOwe> {
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
