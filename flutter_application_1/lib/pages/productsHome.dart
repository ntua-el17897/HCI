import 'dart:html';

import 'package:flutter/material.dart';

class _MyHomeWidgetState extends State<MyHomeWidget> {
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: hmomeMenu',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1:home Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1:home Home',
  //     style: optionStyle,
  //   )
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("assa"),
    //     body: ListView(
    //   children const <Widget>[
    //     Card(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children[
    //         ListTile(
    //           leading: FlutterLogo(size: 72.0),
    //           title: Text('Three-line ListTile'),
    //           subtitle:
    //               Text('A sufficiently long subtitle warrants three lines.'),
    //           trailing: Icon(Icons.more_vert),
    //           isThreeLine: true,
    //         ),
    //       ]),
    //     ),
    //   ],
    // ));
  }
}

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({Key? key}) : super(key: key);

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}
