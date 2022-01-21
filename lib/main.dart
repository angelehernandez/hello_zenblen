import 'package:flutter/material.dart';

const textMsg = 'Hello Zenblen!';
const textColor = Color(0xfff3f6f4);
const backgroundColor = Color(0xff318ce7);

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          ),
          onPressed: () {},
          child: Text(
            textMsg,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    ),
  );
}
