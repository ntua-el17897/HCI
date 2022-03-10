// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({Key? key}) : super(key: key);

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Card(
            child: CustomListItem(
              user:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
              viewCount: 367,
              thumbnail: Image(
                image: AssetImage('../assets/glass2.jpg'),
                fit: BoxFit.cover,
              ),
              title: 'The Classic is Fantastic',
            ),
          ),
          Card(
            child: CustomListItem(
              user:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
              viewCount: 125,
              thumbnail: Image(
                  image: AssetImage('../assets/glass1.jpg'), fit: BoxFit.cover),
              title: 'The Classic is Fantastic',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Wrap(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
              child: Container(
                child: thumbnail,
                constraints: BoxConstraints(maxHeight: 200),
              ),
              alignment: Alignment.center),
          Center(
            child: Expanded(
              flex: 3,
              child: _VideoDescription(
                title: title,
                user: user,
                viewCount: viewCount,
              ),
            ),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.favorite,
                size: 16.0,
              ),
              const Icon(
                Icons.notifications,
                size: 16.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount €',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
