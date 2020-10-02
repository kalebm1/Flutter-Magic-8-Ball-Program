import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal[600],
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.teal[900],
          ),
          body: MyClass(),
        ),
      ),
    );

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int ballNumber = 4;
  void getState(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      Expanded(
        child: FlatButton(
          onPressed:(){
            getState();
    },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    ]));
  }
}
