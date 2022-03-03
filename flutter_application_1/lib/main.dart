// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('our app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      // ignore: prefer_const_constructors
      body: Row(children: <Widget>[
        // ignore: prefer_const_constructors
        Text('hello worls'),
        FlatButton(
          onPressed: () {},
          // ignore: prefer_const_constructors
          child: Text('hi chinld'),
          color: Colors.amber,
        ),
        Container(
          color: Colors.cyan,
          // ignore: prefer_const_constructors
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          // ignore: prefer_const_constructors
          child: Text('this is whAt'),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('you clicked');
        },
        // ignore: prefer_const_constructors
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
