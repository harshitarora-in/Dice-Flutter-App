import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tap Dice To Roll"),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 1, rightImageNumber = 1;
  void imageChangeAlgo() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                imageChangeAlgo();
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                imageChangeAlgo();
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        )
      ]),
    );
  }
}
