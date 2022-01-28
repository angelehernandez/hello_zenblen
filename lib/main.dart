import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

// constants
const appBarTitle = 'Software Internship Exercise';
const textMsg = 'Hello Zenblen!';
const textColor = Color(0xfff3f6f4);
const backgroundColor = Color(0xff318ce7);

// main function
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

// MyApp child of StatefulWidget
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

// _State child State
class _State extends State<MyApp> {
  // this function should send the bluetooth command
  void incrementCounter() {
    setState(() {
      // send bluetooth command here
    });
  }

// button display
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Software Internship Exercise'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          ),
          onPressed: () => {incrementCounter()},
          child: Text(
            textMsg,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
