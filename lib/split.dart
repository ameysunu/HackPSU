import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Split extends StatefulWidget {
  @override
  _SplitState createState() => _SplitState();
}

class _SplitState extends State<Split> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EBBF6A'),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#EBBF6A'),
        centerTitle: true,
        title: Text(
          'Split your money',
          style: TextStyle(
              fontFamily: 'SourceSansPro', color: Colors.black, fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
