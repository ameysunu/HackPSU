import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Tutorials extends StatefulWidget {
  @override
  _TutorialsState createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: HexColor('#EBBF6A'),
              floating: true,
              automaticallyImplyLeading: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://images.pexels.com/photos/259200/pexels-photo-259200.jpeg?cs=srgb&dl=pexels-pixabay-259200.jpg&fm=jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.zero,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "EXPLORE",
                      style: TextStyle(
                          fontFamily: 'Roboto Medium',
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                color: HexColor('#EBA86A'),
                height: 100,
                child: Center(
                    child: Text(
                  "HOW CREDIT CARDS ARE USED",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
              Container(
                color: HexColor('#DF867C'),
                height: 100,
                child: Center(
                    child: Text(
                  "HOW DEBIT CARDS ARE USED",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
              Container(
                color: HexColor('#BA718C'),
                height: 100,
                child: Center(
                    child: Text(
                  "HOW TO WITHDRAW MONEY FROM THE BANK",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
              Container(
                color: HexColor('#85658C'),
                height: 100,
                child: Center(
                    child: Text(
                  "HOW TO SAVE MONEY",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
              Container(
                color: HexColor('#515979'),
                height: 100,
                child: Center(
                    child: Text(
                  "HOW TO SPLIT MONEY",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
              Container(
                color: HexColor('#2F4858'),
                height: 100,
                child: Center(
                    child: Text(
                  "MORE INFO",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto Medium',
                      fontSize: 17),
                )),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
