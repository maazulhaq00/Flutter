// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:c5_dicee/widgets/DiceRow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dice App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: DiceRow()
      ),
    );
  }
}
