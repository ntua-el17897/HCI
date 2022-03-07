import 'dart:html';

import 'package:flutter/material.dart';

class CheckboxThing extends StatefulWidget {
  const CheckboxThing({Key? key}) : super(key: key);

  @override
  State<CheckboxThing> createState() => _CheckboxThingState();
}

class _CheckboxThingState extends State<CheckboxThing> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
        TextFormField(
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(null),
            labelText: 'Username',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            // suffixIcon: Icon(Icons.remove_red_eye_sharp),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
            ),
          ),
        ),
        TextFormField(
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(null),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            // helperText: 'Helper text',
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6200EE))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
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
          padding: const EdgeInsets.all(38.0),
          child: Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productsOverview');
                // Add your onPressed code here!
              },
              child: const Text('SIGN UP'),
              // label: const Text('log in'),
              // icon: Icon(Icons.login_sharp,
              //     color: Color(0xFF6200EE), size: size2),
              style: ElevatedButton.styleFrom(primary: const Color(0xFF6200EE)),
            );
          }),
        ),
      ],
    );
  }
}
