import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/productsOverview.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.start,
          children: [
            Align(
              alignment: Alignment(0.20, -0.95),
              child: Image(image: AssetImage('../assets/cloudglasses.png')),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Surname',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Address',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Postal Code',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Mobile Phone',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(null),
                labelText: 'Second Phone',
                labelStyle: TextStyle(
                  color: Colors.deepPurpleAccent,
                ),
                // suffixIcon: Icon(Icons.remove_red_eye_sharp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                // print("congrats it works");
                Navigator.pop(context);
              },
              child: Text('ABORT'),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
            ),
            ElevatedButton(
              onPressed: () {
                // print("congrats it works");
                Navigator.pop(context);
              },
              child: Text('FINISH'),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
            )
          ]),
    );
  }
}
