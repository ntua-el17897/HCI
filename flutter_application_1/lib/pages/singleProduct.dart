import 'dart:html';

import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // padding: const EdgeInsets.all(20.0),
          children: [
            Stack(children: const [
              Image(image: AssetImage('../assets/glass1.jpg')),
              Padding(
                  padding: EdgeInsets.all(50),
                  child: Image(image: AssetImage('../assets/cloudglasses.png')))
            ]),

            titleSection,
            buttonSection,
            //buttonSection2,
            textSection,
          ]),
    );
  }

  Widget titleSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'Classic Is Fantastic',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );

  //Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
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
    // );
    //}),
  );

  //  Widget buttonSection2 = Center(
  //    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           child: Builder(builder: (context) {
  //           // var size2 = 18;
  //           return ElevatedButton(
  //             onPressed: () {
  //               Navigator.pushNamed(context, '/productsoverview');
  //               // Add your onPressed code here!
  //             },
  //             child: const Text('LOG IN'),
  //             // label: const Text('log in'),
  //             // icon: Icon(Icons.login_sharp,
  //             //     color: Colors.deepPurpleAccent, size: size2),
  //             style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),

  //           );
  //         }),
  //  );

  // ignore: prefer_const_constructors
  Widget textSection = Expanded(
    flex: 1,
    child: const Padding(
      padding: EdgeInsets.all(30),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical, //.horizontal
        child: Text('Lorem Ipsum is simply dummy text of '
            'the printing and typesetting industry'
            'Lorem Ipsum has been the industrys standard'
            'dummy text ever since the 1500s, when an unknown'
            'printer took a galley of type and scrambled it to'
            'make a type specimen book. It has survived not'
            'only five centuries, but also the leap into '
            'electronic typesetting, remaining essentially '
            'unchanged. It was popularised in the 1960s with'
            'the release of Letraset sheets containing Lorem'
            'Ipsum passages, and more recently with desktop'
            'publishing software like Aldus PageMaker'
            'including versions of Lorem Ipsum.'
            'Lorem Ipsum is simply dummy text of the printing'
            'and typesetting industry. Lorem Ipsum has been the'
            'industrys standard dummy text ever since the 1500s,'
            'when an unknown printer took a galley of type and'
            'scrambled it to make a type specimen book. It has'
            'survived not only five centuries, but also the leap'
            'into electronic typesetting, remaining essentially'
            'unchanged. It was popularised in the 1960s with the'
            'release of Letraset sheets containing Lorem Ipsum'
            'passages, and more recently with desktop publishing'
            'software like Aldus PageMaker including versions of Lorem Ipsum.'),
      ),
    ),
  );
}
