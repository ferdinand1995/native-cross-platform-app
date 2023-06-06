import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      const MaterialApp(
        home: BallPage(),
      )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: Colors.blue[900]
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = min;
  static const int min = 1;
  static const int max = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        OutlinedButton(
          child: Image(image: AssetImage("images/ball$ballNumber.png")
          ), onPressed: () {
          ballNumber = min + Random().nextInt((max + 1) - min);
          setState(() {});
        },
        )
    );
  }
}