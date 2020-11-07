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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "6th November 2020",
                        style: TextStyle(
                            color: HexColor('#914275'),
                            fontFamily: 'SourceSansPro'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "GAVE AARON FOR SHOPPING",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "- \u0024 75",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "6th November 2020",
                        style: TextStyle(
                            color: HexColor('#914275'),
                            fontFamily: 'SourceSansPro'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "GAVE LISA FOR CHIPOTLE",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "- \u0024 6.72",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "7th November 2020",
                        style: TextStyle(
                            color: HexColor('#914275'),
                            fontFamily: 'SourceSansPro'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "LISA GAVE FOR UBER",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "+ \u0024 7.25",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8th November 2020",
                        style: TextStyle(
                            color: HexColor('#914275'),
                            fontFamily: 'SourceSansPro'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "RITA GAVE FOR LUNCH",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "+ \u0024 35.76",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
