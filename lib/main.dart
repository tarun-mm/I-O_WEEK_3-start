import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text('Roll r Toss'),
          ),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: Roll(),
      ),
    ),
  );
}

class Roll extends StatefulWidget {

  @override
  _RollState createState() => _RollState();
}

class _RollState extends State<Roll> {
  var coinNumber = 0;
  var diceNumber = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/coin$coinNumber.jpg"),
              ),
              onTap: () {
                setState(() {
                  coinNumber = Random().nextInt(2);
                  diceNumber = Random().nextInt(6)+1;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$diceNumber.png"),
              ),
              onTap: (){
                setState(() {
                  coinNumber = Random().nextInt(2);
                  diceNumber = Random().nextInt(6)+1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}