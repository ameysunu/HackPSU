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
                    //   signInWithGoogle().then((result) {
                    //     if (result != null) {
                    //       Navigator.of(context).push(
                    //         MaterialPageRoute(
                    //           builder: (context) {
                    //             return HomeWidget();
                    //           },
                    //         ),
                    //       );
                    //     }
                    //   });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
