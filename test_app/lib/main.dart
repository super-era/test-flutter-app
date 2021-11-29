import 'package:flutter/material.dart';

import './option.dart';

const COLOUR_BLACK = Color.fromRGBO(19, 11, 36, 1.0);
const COLOUR_YELLOW = Color.fromRGBO(240, 180, 60, 1.0);


void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test app',
      home: MainMenu(),
        
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var menu = [
      'Start new Chore Sprint',
      'Chore Board',
      'Chore Tracker',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        color: COLOUR_BLACK,
        width: double.infinity,
        //margin: EdgeInsetsDirectional.only(top: 40.0),
        child: Column(
          children: [
            Text(
            'Please choose from the following options',
              style: TextStyle(
                height: 8,
                color: Colors.white,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            Option(menu.elementAt(0), ChoreBoard),
            Option(menu.elementAt(1), ChoreBoard),
            Option(menu.elementAt(2), ChoreBoard),
          ],
        ),
      ),
    );
  }

  void _navToChoreBoard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChoreBoard()));
  }
}

class ChoreBoard extends StatelessWidget {
  const ChoreBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var subMenu = [
      'View Chore List',
      'Add new Chore',
      'Edit Chore'
      'Delete Chore',
      'Return to previous menu',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Chore Board'),
      ),
      body: Container(
        color: COLOUR_BLACK,
        width: double.infinity,
        //margin: EdgeInsetsDirectional.only(top: 40.0),
        child: Column(
          children: [
            Text(
              subMenu.elementAt(4),
              style: TextStyle(
                height: 8,
                color: Colors.white,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            // Option(subMenu.elementAt(0)),
            // Option(subMenu.elementAt(1)),
            // Option(subMenu.elementAt(2)),
            // Option(subMenu.elementAt(3)),
            Text(''),
            Text(''),
            // Option(subMenu.elementAt(4)),
          ],
        ),
      ),
    );
  }
}