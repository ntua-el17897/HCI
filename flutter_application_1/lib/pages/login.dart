import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1641451029786-9caca048d9af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                fit: BoxFit.fill),
          ),
          child: Center(
            child: Container(
              child: const SizedBox.expand(
                child: Text('hello login'),
              ),
            ),
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
