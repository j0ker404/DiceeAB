import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;
  final Random myRandom = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDieNumber.png'),
              onPressed: () {
                updateDiceState();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDieNumber.png'),
              onPressed: () {
                updateDiceState();
              },
            ),
          ),
        ],
      ),
    );
  }

  void updateDiceState() {
    setState(() {
      this.leftDieNumber = (myRandom.nextDouble() * 6 + 1).toInt();
      this.rightDieNumber = (myRandom.nextDouble() * 6 + 1).toInt();
    });
    // print('left:' + (this.leftDieNumber).toString());
    // print('Right:' + (this.rightDieNumber).toString());
  }
}
