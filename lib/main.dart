import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

Function()

}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdice = 1;
  var rightdice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftdice = Random().nextInt(6) + 1;
                  rightdice = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftdice.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftdice = Random().nextInt(6)+1;
                  rightdice = Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightdice.png'),
              ),
            ),
          ),
        ],
      ),
    );
}
  }
