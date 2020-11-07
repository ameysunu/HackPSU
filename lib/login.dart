import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#EBBF6A'),
        title: Text(
          'Login',
          style: TextStyle(fontFamily: 'Roboto Medium', color: Colors.black),
        ),
        elevation: 0,
      ),
      backgroundColor: HexColor('#EBBF6A'),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: HexColor('#9296F0'),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              child: Image.asset("images/google.png"),
                            ),
                          ),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto Medium",
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      // signInWithGoogle().then((result) {
                      //   if (result != null) {
                      //     Navigator.of(context).push(
                      //       MaterialPageRoute(
                      //         builder: (context) {
                      //           return Home();
                      //         },
                      //       ),
                      //     );
                      //   }
                      // });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
