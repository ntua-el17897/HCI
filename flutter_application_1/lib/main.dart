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
        '/cameraScreen': (context) => CameraScreen(),
        '/checkout': (context) => Checkout(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/productsOverview': (context) => ProductsOverview(),
        '/singleproduct': (context) => SingleProduct(),
      },
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1641451029786-9caca048d9af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                fit: BoxFit.fill),
          ),
          child: Container(
            child: SizedBox.expand(
              child: Image(image: AssetImage('../assets/cloudglasses.png')),
            ),
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
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                  // Respond to button press
                },
                child: Text('SIGN UP'),
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
      ),
    );
  }
}
