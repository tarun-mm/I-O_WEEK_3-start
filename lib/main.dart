import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Roll r Toss')),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: Container(),
      ),
    ),
  );
}

