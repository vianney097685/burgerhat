import 'package:flutter/material.dart';
class FirstPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'First Page',
          style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
        ), //Text
      ), // center
    ); //container
  } // widget
} // first page