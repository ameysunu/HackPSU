import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final nameController = TextEditingController();
final moneyController = TextEditingController();
final contactController = TextEditingController();
final excessController = TextEditingController();

final firestoreInstance = FirebaseFirestore.instance;

class TheyOwe extends StatefulWidget {
  @override
  _TheyOweState createState() => _TheyOweState();
}

class _TheyOweState extends State<TheyOwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              controller: nameController,
              style:
                  TextStyle(color: Colors.black, fontFamily: 'SourceSansPro'),
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black)),
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black54,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
                labelStyle:
                    TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
                hintText: 'Name of the expense',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: TextFormField(
              controller: moneyController,
              style:
                  TextStyle(color: Colors.black, fontFamily: 'SourceSansPro'),
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black)),
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black54,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
                labelStyle:
                    TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
                hintText: 'How much did you spend?',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: TextFormField(
              controller: contactController,
              style:
                  TextStyle(color: Colors.black, fontFamily: 'SourceSansPro'),
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black)),
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black54,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
                labelStyle:
                    TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
                hintText: 'Add a contact',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: TextFormField(
              controller: excessController,
              style:
                  TextStyle(color: Colors.black, fontFamily: 'SourceSansPro'),
              decoration: new InputDecoration(
                enabledBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.black)),
                hintStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.black54,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
                labelStyle:
                    TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
                hintText: 'How much do they owe you?',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: HexColor('#9F68A7'),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.save,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SourceSansPro",
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                newRecord();
                _submitDialog(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              color: HexColor('#9F68A7'),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Saved Expenses",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SourceSansPro",
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Viewer()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _submitDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              "Saved!",
              style: TextStyle(fontFamily: 'SourceSansPro'),
            ),
          ),
        );
      });
}

void newRecord() async {
  var firebaseUser = await FirebaseAuth.instance.currentUser;
  firestoreInstance.collection("users").doc('theyowe').update({
    "name": nameController.text,
    "money": moneyController.text,
    "contact": contactController.text,
    "owe": excessController.text,
  }).then((_) {
    print("success!");
    nameController.clear();
    moneyController.clear();
    contactController.clear();
    excessController.clear();
  });
}

AsyncSnapshot<DocumentSnapshot> snapshot;
Future<DocumentSnapshot> getUserInfo() async {
  var firebaseUser = await FirebaseAuth.instance.currentUser;
  return await FirebaseFirestore.instance.doc('users/theyowe').get();
}

class Viewer extends StatefulWidget {
  @override
  _ViewerState createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#EBBF6A'),
        title: Text(
          'Saved Data',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: HexColor('#EBBF6A'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              child: FutureBuilder(
                future: getUserInfo(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(
                              "Name of Expense\n" +
                                  snapshot.data.data()['name'] +
                                  "\n\nHow much you spent\n" +
                                  snapshot.data.data()['money'] +
                                  "\n\nAdded contact\n" +
                                  snapshot.data.data()['contact'] +
                                  "\n\nHow much they owe you\n" +
                                  snapshot.data.data()['owe'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20),
                            ),
                          );
                        });
                  } else if (snapshot.connectionState == ConnectionState.none) {
                    return Text("No data");
                  }
                  return CircularProgressIndicator();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
