import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Leftdice_button = 4;
  int Rightdice_button=1;
  void changedicebehaviour()
  {                setState(() {
    //bcs it start from 0 to 5

    Leftdice_button = Random().nextInt(6) + 1;
    Rightdice_button = Random().nextInt(6) + 1;
  });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                  changedicebehaviour();
              });
            },
            child: Image.asset('images/dice$Leftdice_button.png'),
          )),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changedicebehaviour();
                });

              },
              child: Image.asset('images/dice$Rightdice_button.png'),
            ),
          ),
        ],
      ),
    );
  }
}
