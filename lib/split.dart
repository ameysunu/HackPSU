import 'package:flutter/material.dart';
import 'package:hackpsu/pages/expenses.dart';
import 'package:hackpsu/pages/iowe.dart';
import 'package:hackpsu/pages/theyowe.dart';
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
        flexibleSpace: Image(
          image: AssetImage('images/game.png'),
          fit: BoxFit.cover,
        ),
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
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/tutorial.png',
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: HexColor('#FE8A7E'),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create an expense",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SourceSansPro",
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Expenses()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  //height: MediaQuery.of(context).size.height * 0.1,
                  color: HexColor('#EBBF6A'),
                  child: Center(
                    child: Text(
                      "DO YOU OWE MONEY?",
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 20),
                      child: Container(
                        height: 250,
                        width: 175,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => IOwe()),
                            );
                          },
                          child: Card(
                            color: HexColor('#C96DA0'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Container(
                                        child: Icon(
                                  Icons.compare_arrows_rounded,
                                  color: HexColor('#756492'),
                                  size: 40,
                                ))),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "You Owe",
                                    style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Check how much you owe your friends",
                                    style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        color: Colors.white54,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                      child: Container(
                        height: 250,
                        width: 175,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TheyOwe()),
                            );
                          },
                          child: Card(
                            elevation: 5,
                            color: HexColor('#C96DA0'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Container(
                                        child: Icon(
                                  Icons.attach_money,
                                  color: HexColor('#00E6E4'),
                                  size: 40,
                                ))),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "They Owe",
                                    style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Check how much your friends owe you.",
                                    style: TextStyle(
                                        fontFamily: 'Metropolis',
                                        color: Colors.white54,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // decoration: new BoxDecoration(
                        //   boxShadow: [
                        //     new BoxShadow(
                        //       color: Colors.white38,
                        //       blurRadius: 20.0,
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
