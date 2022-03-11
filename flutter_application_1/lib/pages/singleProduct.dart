import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cameraScreen.dart';

class SingleProduct1 extends StatefulWidget {
  @override
  _SingleProduct1State createState() => _SingleProduct1State();
}

class _SingleProduct1State extends State<SingleProduct1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // padding: const EdgeInsets.all(20.0),
          children: [
            Stack(children: const [
              Hero(
                  tag: "image1",
                  child: Image(image: AssetImage('../assets/glass1.jpg'))),
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
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CameraScreen()));
          },
          child: Text('WATCH IN AR'),
          style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
        );
      }),
      Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {},
          child: Text('ADD TO CART'),
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

class SingleProduct2 extends StatefulWidget {
  @override
  _SingleProduct2State createState() => _SingleProduct2State();
}

class _SingleProduct2State extends State<SingleProduct2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // padding: const EdgeInsets.all(20.0),
          children: [
            Stack(children: const [
              Hero(
                  tag: "image2",
                  child: Image(image: AssetImage('../assets/glass2.jpg'))),
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
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CameraScreen()));
          },
          child: Text('WATCH IN AR'),
          style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
        );
      }),
      Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {},
          child: Text('ADD TO CART'),
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

class SingleProduct3 extends StatefulWidget {
  @override
  _SingleProduct3State createState() => _SingleProduct3State();
}

class _SingleProduct3State extends State<SingleProduct3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // padding: const EdgeInsets.all(20.0),
          children: [
            Stack(children: const [
              Hero(
                  tag: "image3",
                  child: Image(image: AssetImage('../assets/glass3.jpg'))),
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
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CameraScreen()));
          },
          child: Text('WATCH IN AR'),
          style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
        );
      }),
      Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {},
          child: Text('ADD TO CART'),
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

//

class _MyNavBarWidgetState extends State<MyNavBarWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text("sd"),
    Text("sd"),
    Text("sd"),
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

class MyNavBarWidget extends StatefulWidget {
  const MyNavBarWidget({Key? key}) : super(key: key);

  @override
  State<MyNavBarWidget> createState() => _MyNavBarWidgetState();
}

class _ProductsOverview2State extends State<ProductsOverview2> {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return const MaterialApp(
      home: MyNavBarWidget(),
    );
  }
}

class ProductsOverview2 extends StatefulWidget {
  @override
  _ProductsOverview2State createState() => _ProductsOverview2State();
}
