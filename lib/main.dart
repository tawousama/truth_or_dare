import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Truth or Dare',
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.teal[900],
      ),
      body: turn(),
    ),
  ));
}

class turn extends StatefulWidget {
  @override
  _turnState createState() => _turnState();
}

class _turnState extends State<turn> {
  void spin() {
    setState(() {
      bottledirection = Random().nextInt(4);
    });
  }

  @override
  int bottledirection = 0;
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/wood.jpg'),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Image.asset('images/bouteille$bottledirection.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 150, 20, 150),
                child: FlatButton(
                  onPressed: () {
                    spin();
                  },
                  color: Colors.white70,
                  child: Text(
                    'spin the bottle',
                    style: TextStyle(color: Colors.teal[700], fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
