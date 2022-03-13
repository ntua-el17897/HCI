// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cameraScreen.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/checkout.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/productsOverview.dart';
import 'package:flutter_application_1/pages/singleProduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      //initialRoute: '/loginRegister',
      routes: {
        '/cart': (context) => Cart(),
        '/camerascreen': (context) => CameraScreen(),
        '/checkout': (context) => Checkout(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/productsoverview': (context) => ProductsOverview(),
        '/singleproduct1': (context) => SingleProduct1(),
        '/singleproduct2': (context) => SingleProduct2(),
        '/singleproduct3': (context) => SingleProduct3(),
      },
      home: LoginRegister(),
    );
  }
}

// ignore: non_constant_identifier_names
Scaffold LoginRegister() {
  return Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('../assets/kourtina.jpg'), fit: BoxFit.fill),
      ),
      child: SizedBox.expand(
        child: Image(image: AssetImage('../assets/cloudglasses.png')),
      ),
      padding: EdgeInsets.all(20),
    ),
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Builder(builder: (context) {
          //   return FloatingActionButton.extended(
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/login');
          //       // Add your onPressed code here!
          //     },
          // label: const Text('log in'),
          // icon: const Icon(Icons.login),
          // backgroundColor: Color.fromARGB(255, 0, 0, 0),
          //   );
          return ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
              // Respond to button press
            },
            child: Text('LOG IN'),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
          );
        }),
        Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
              // Respond to button press
            },
            child: Text('SIGN UP'),
            style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
          );
          // return FloatingActionButton.extended(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/register');
          //     // Add your onPressed code here!
          //   },
          //   label: const Text('sign up'),
          //   icon: const Icon(Icons.add),
          //   backgroundColor: Color.fromARGB(255, 100, 100, 100),
          // );
        }),
      ],
    ),
  );
}
