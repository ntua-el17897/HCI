import 'dart:html';

import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';
import 'cart.dart';

class _ProductsOverviewState extends State<ProductsOverview> {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: _title,
      // ignore: prefer_const_constructors
      home: Builder(builder: (context) {
        return const MaterialApp(
          title: 'Startup Name Generator',
          home: MyNavBarWidget(),
        );
      }),
    );
  }
}

class _MyNavBarWidgetState extends State<MyNavBarWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MyMenuWidget(),
    MyHomeWidget(),
    MyCartWidget()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: hmomeMenu',
      style: optionStyle,
    ),
    Text(
      'Index 1:home Home',
      style: optionStyle,
    ),
    Text(
      'Index 1:home Home',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class _MyMenuWidgetState extends State<MyMenuWidget> {
  final _suggestions = ["user", "banana", "three", "four"];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: Image(image: AssetImage('../assets/face.jpg')),
            title: Text('User Useropoulos'),
            subtitle: Text('snailman@emailperson.com'),
            isThreeLine: true,
            contentPadding: EdgeInsets.fromLTRB(1, 80, 1, 1),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18.0),
            ),
            //onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            title: Text(
              "Cart",
              style: TextStyle(fontSize: 18.0),
            ),
            //onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title: Text(
              "Wishlist",
              style: TextStyle(fontSize: 18.0),
            ),
            //onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.camera,
              color: Colors.grey,
            ),
            title: Text(
              "AR Simulation",
              style: TextStyle(fontSize: 18.0),
            ),
            //onTap: () {},
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.grey,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 18.0),
            ),
            //onTap: () {},
          ),
        ),
      ],
    );
  }
}

// #enddocregion RWS-var

class MyNavBarWidget extends StatefulWidget {
  const MyNavBarWidget({Key? key}) : super(key: key);

  @override
  State<MyNavBarWidget> createState() => _MyNavBarWidgetState();
}

class MyMenuWidget extends StatefulWidget {
  const MyMenuWidget({Key? key}) : super(key: key);

  @override
  State<MyMenuWidget> createState() => _MyMenuWidgetState();
}

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({Key? key}) : super(key: key);

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class ProductsOverview extends StatefulWidget {
  @override
  _ProductsOverviewState createState() => _ProductsOverviewState();
}
