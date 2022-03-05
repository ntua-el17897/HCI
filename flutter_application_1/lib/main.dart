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
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // ignore: prefer_const_constructors

            Expanded(
              flex: 34,
              child: Container(
                color: Colors.cyan,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                // ignore: prefer_const_constructors
                child: Text('this is  whAt'),
              ),
            ),
            Expanded(
              flex: 65,
              child: Container(
                color: Colors.orange,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                // ignore: prefer_const_constructors
                child: Text('this is 2whAt'),
              ),
            ),
            Expanded(
              flex: 42,
              child: Container(
                color: Colors.green,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                // ignore: prefer_const_constructors
                child: Text('this is 3whAt'),
              ),
            ),
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
