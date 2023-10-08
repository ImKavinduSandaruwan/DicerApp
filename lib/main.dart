import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Random Dicer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),),
        ),
        backgroundColor: Colors.teal,
      ),
      body: const Dicer(),
      backgroundColor: Colors.black,
    ),
  ));
}

class Dicer extends StatefulWidget {
  const Dicer({super.key});

  @override
  State<Dicer> createState() => _DicerState();
}

class _DicerState extends State<Dicer> {

  int leftDice = 1;
  int rightDice = 1;

  void changeDice(){
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: (){
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Text('Developed by Kavindu',
              style: TextStyle(
                color: Colors.tealAccent,
                fontFamily: 'Pacifico',
                fontSize: 25,
              ),
              ),
              Text("PenDragon Technologies",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.4,
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}