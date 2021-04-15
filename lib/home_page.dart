import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
          child: Center(
        child: Container(
          child: Text(" Welcome to 20 days of flutter",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
