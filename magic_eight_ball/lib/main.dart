import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: MagicApp(),
    ),
  );
}

class MagicApp extends StatelessWidget {
  const MagicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade800,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.blue[200],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallImage(),
      ),
    );
  }
}

class BallImage extends StatefulWidget {
  BallImage({Key? key}) : super(key: key);

  @override
  _BallImageState createState() => _BallImageState();
}

class _BallImageState extends State<BallImage> {
  int ballNumber = 2;

  void getFortune() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              getFortune();
            },
          );
        },
        child: Image.asset('images/ball$ballNumber.png'),
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
