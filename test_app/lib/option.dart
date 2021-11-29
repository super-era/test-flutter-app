import 'package:flutter/material.dart';
import 'package:test_app/main.dart';

class Option extends StatelessWidget {
  final String optionText;
  var pageName;

  Option(this.optionText, this.pageName);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 400,
      margin: EdgeInsetsDirectional.only(top: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: COLOUR_YELLOW,
        ),
        onPressed: () {
          print('button pressed');
          Navigator.push(context, pageName());
        },   // anonymous function - no need to use its contents anywhere else
        child: Text(
          optionText,
          style: TextStyle(
            fontSize: 20
          ),
          textAlign: TextAlign.center,    // takes you to list of chores available
        ),
      ),
    );
  }

}