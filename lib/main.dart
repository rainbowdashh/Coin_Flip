import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int kek = 0;
  String path = 'assets/fata.png';

  void randomimagekek() {
    setState(() {
      kek = random.nextInt(2);
      if (kek == 1)
        path = 'assets/fata.png';
      else if (kek == 0) path = 'assets/spate.png';
    });
  }

  var random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: Image.asset(path),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: 195,
                height: 80,
                child: RaisedButton(
                  color: Colors.blue[600],
                  child: Text(
                    "Flip-me",
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: randomimagekek,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[800],
          title: Text("Flip the coin"),
        ),
      ),
    );
  }
}
