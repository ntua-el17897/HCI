import 'dart:html';

import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('single product'),
    );
  }
}
