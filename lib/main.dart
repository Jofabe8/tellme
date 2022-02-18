import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask me anything')),
          backgroundColor: Colors.blue,
        ),
        body: BallPage2(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  int ballNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  print("Vous avez appuyer sur le bouton");
                },
                child: Image.asset("images/ball$ballNumber.png")),
          )),
        ],
      ),
    );
  }
}

class BallPage2 extends StatefulWidget {
  const BallPage2({Key? key}) : super(key: key);

  @override
  _BallPage2State createState() => _BallPage2State();
}

class _BallPage2State extends State<BallPage2> {
  int BallNumber = Random().nextInt(5) + 1;

  BallChanged() {
    BallNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    BallChanged();
                  });
                  print("Vous avez appuyer sur le bouton");
                },
                child: Image.asset("images/ball$BallNumber.png")),
          )),
        ],
      ),
    );
  }
}
