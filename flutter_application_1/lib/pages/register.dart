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
          cursorColor: Theme.of(context).cursorColor,
          initialValue: 'Input text',
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(Icons.favorite),
            labelText: 'Label text',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            helperText: 'Helper text',
            suffixIcon: Icon(
              Icons.check_circle,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
            ),
          ),
        ),
        TextFormField(
          cursorColor: Theme.of(context).cursorColor,
          initialValue: 'Input text',
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(Icons.favorite),
            labelText: 'Label text',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            helperText: 'Helper text',
            suffixIcon: Icon(
              Icons.check_circle,
            ),
            enabledBorder: UnderlineInputBorder(
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
            return FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/productsOverview');
                // Add your onPressed code here!
              },
              label: const Text('sign up'),
              icon: const Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            );
          }),
        ),
      ],
    );
  }
}
