import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice App')),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // ignore: non_constant_identifier_names
  int LeftButton = 2;
  // ignore: non_constant_identifier_names
  int RightButton = 4;

  void _rollDice() {
    setState(() {
      LeftButton = Random().nextInt(6) + 1;
      RightButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: _rollDice,
                child: Image.asset('images/dice$LeftButton.png')),
          ),
          Expanded(
            child: TextButton(
              onPressed: _rollDice,
              child: Image.asset('images/dice$RightButton.png'),
            ),
          )
        ],
      ),
    );
  }
}
