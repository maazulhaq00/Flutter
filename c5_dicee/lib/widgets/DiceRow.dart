import 'dart:math';
import 'package:flutter/material.dart';

class DiceRow extends StatefulWidget {
  const DiceRow({super.key});

  @override
  State<DiceRow> createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  updateDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              updateDice();
            },
          ),
        ),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              updateDice();
            },
          ),
        ),
      ],
    );
  }
}
