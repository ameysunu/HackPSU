import 'package:flutter/material.dart';
import 'package:hackpsu/quiz.dart';
import 'package:hackpsu/split.dart';
import 'package:hackpsu/tutorials.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Tutorials(),
    Split(),
    Quiz(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor('#FFC1B2'),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.library_books, color: HexColor('#545E78')),
              title: new Text(
                'Tutorials',
                style: TextStyle(
                    color: HexColor('#545E78'), fontFamily: 'Roboto Medium'),
              ),
            ),
            BottomNavigationBarItem(
              icon:
                  new Icon(Icons.horizontal_split, color: HexColor('#545E78')),
              title: new Text(
                'Split',
                style: TextStyle(
                    color: HexColor('#545E78'), fontFamily: 'Roboto Medium'),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.help_center, color: HexColor('#545E78')),
              title: new Text(
                'Quiz',
                style: TextStyle(
                    color: HexColor('#545E78'), fontFamily: 'Roboto Medium'),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.person, color: HexColor('#545E78')),
              title: new Text(
                'User',
                style: TextStyle(
                    color: HexColor('#545E78'), fontFamily: 'Roboto Medium'),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
