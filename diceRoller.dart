import 'package:flutter/material.dart';
import 'dart:math';

final randomGenerator = Random();

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() => _DicerollerState();
}

class _DicerollerState extends State<Diceroller> {
  int diceImagenum = 2;

  void rollDice() {
    setState(() {
      diceImagenum = randomGenerator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceImagenum.png',
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
