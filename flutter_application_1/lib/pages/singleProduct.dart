import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/productsOverview.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavbarThing(),
    );
  }
}
