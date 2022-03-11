import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/singleProduct.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCartWidget(),
    );
  }
}

class MyCartWidget extends StatefulWidget {
  const MyCartWidget({Key? key}) : super(key: key);

  @override
  State<MyCartWidget> createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,

      // Respond to button press

      children: <Widget>[
        Hero(
          tag: "image1",
          child: ElevatedButton(
            child: const Card(
              child: CustomListItem(
                user:
                    'Lorem ipsum fdolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                viewCount: 367,
                thumbnail: Image(
                  image: AssetImage('../assets/glass1.jpg'),
                  fit: BoxFit.cover,
                ),
                title: 'The Classic is Fantastic',
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SingleProduct1()));
            },
          ),
        ),
        Hero(
          tag: "image2",
          child: ElevatedButton(
            child: const Card(
              child: CustomListItem(
                user:
                    'Lorem ipsum fdolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                viewCount: 367,
                thumbnail: Image(
                  image: AssetImage('../assets/glass2.jpg'),
                  fit: BoxFit.cover,
                ),
                title: 'The Classic is Fantastic',
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SingleProduct2()));
            },
          ),
        ),
        Hero(
          tag: "image3",
          child: ElevatedButton(
            child: const Card(
              child: CustomListItem(
                user:
                    'Lorem ipsum fdolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                viewCount: 367,
                thumbnail: Image(
                  image: AssetImage('../assets/glass3.jpg'),
                  fit: BoxFit.cover,
                ),
                title: 'The Classic is Fantastic',
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SingleProduct3()));
            },
          ),
        ),
      ],
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          const Icon(
            Icons.remove_circle,
            color: Color.fromARGB(255, 133, 39, 33),
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
