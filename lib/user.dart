import 'package:flutter/material.dart';
import 'package:hackpsu/homewidget.dart';
import 'package:hackpsu/login.dart';
import 'package:hexcolor/hexcolor.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EBBF6A'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/user.png'), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 74,
                    backgroundColor: HexColor('#AD2DA8'),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 10, bottom: 10),
                  child: RaisedButton(
                    color: HexColor('#EF5596'),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Change your avatar",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SourceSansPro",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
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
                        MaterialPageRoute(builder: (context) => Avatar()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
                  child: Container(
                    child: Text(
                      email,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 30.0, top: 10, bottom: 10),
                  child: RaisedButton(
                    color: HexColor('#FFFFFF'),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "SourceSansPro",
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      signOutGoogle();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 60,
                ),
                Container(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#EBBF6A'),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: HexColor('#EBBF6A'),
        title: Text(
          "Choose your avatar",
          style: TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://i.kym-cdn.com/entries/icons/original/000/018/385/Rs_634x1024-130605092844-634.DespMe2.mh.060513.jpg'),
                radius: 45,
              ),
              onTap: () {
                imageCache.clear();
                imageUrl =
                    'https://i.kym-cdn.com/entries/icons/original/000/018/385/Rs_634x1024-130605092844-634.DespMe2.mh.060513.jpg';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWidget()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/5/53/Scooby-Doo.png'),
                  radius: 45,
                ),
                onTap: () {
                  imageCache.clear();
                  imageUrl =
                      'https://upload.wikimedia.org/wikipedia/en/5/53/Scooby-Doo.png';
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeWidget()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://i.ibb.co/jhjvLBT/ezgif-com-gif-maker.png'),
                  radius: 45,
                ),
                onTap: () {
                  imageCache.clear();
                  imageUrl = 'https://i.ibb.co/jhjvLBT/ezgif-com-gif-maker.png';
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeWidget()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://i.ibb.co/7nx3bG6/ezgif-com-gif-maker-1.png'),
                  radius: 45,
                ),
                onTap: () {
                  imageCache.clear();
                  imageUrl =
                      'https://i.ibb.co/7nx3bG6/ezgif-com-gif-maker-1.png';
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeWidget()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
