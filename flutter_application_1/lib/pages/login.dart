import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(48.0),
        child: Image(image: AssetImage('../assets/cloudglasses.png')),
      ),
      floatingActionButton: Center(child: newMethod()),
    );
  }

  Column newMethod() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            initialValue: 'Input text',
            decoration: InputDecoration(
              labelText: 'Label text',
              errorText: 'Error message',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            initialValue: 'Input text',
            decoration: InputDecoration(
              labelText: 'Label text',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: Builder(builder: (context) {
            return FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
                // Add your onPressed code here!
              },
              label: const Text('log in'),
              icon: const Icon(Icons.login),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            );
          }),
        ),
      ],
    );
  }
}
