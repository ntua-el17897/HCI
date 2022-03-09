import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Image(image: AssetImage('../assets/cloudglasses.png')),
      ),
      floatingActionButton:
          Align(alignment: Alignment.bottomCenter, child: newMethod()),
    );
  }

  Column newMethod() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(null),
            labelText: 'Username',
            labelStyle: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
            // suffixIcon: Icon(Icons.remove_red_eye_sharp),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurpleAccent),
            ),
          ),
        ),
        TextFormField(
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(null),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
            // helperText: 'Helper text',
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurpleAccent),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Remember my password"),
            CheckboxThing(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(48.0),
          child: Builder(builder: (context) {
            // var size2 = 18;
            return ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productsoverview');
                // Add your onPressed code here!
              },
              child: const Text('LOG IN'),
              // label: const Text('log in'),
              // icon: Icon(Icons.login_sharp,
              //     color: Colors.deepPurpleAccent, size: size2),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
            );
          }),
        ),
      ],
    );
  }
}
