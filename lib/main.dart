import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFAF0CA),
        appBar: AppBar(
          backgroundColor: Color(0xFF1B263B),
          title: Text(
            'Magic 8 Ball',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Doto',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  @override
  int number = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                number = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset(
              'images/ball$number.png',
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Press 8 Ball to see\nWhat MAGIC it says...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'SilkScreen',
            ),
          )
        ],
      ),
    );
  }
}
