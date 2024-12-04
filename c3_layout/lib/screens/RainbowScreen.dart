// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:c3_layout/widgets/Box.dart';
import 'package:flutter/material.dart';

class RainbowScreen extends StatelessWidget {
  const RainbowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Box(boxColor: Colors.purple),
          // SizedBox(
          //   height: 10,
          // ),
          Box(boxColor: Colors.indigo),

          Box(boxColor: Colors.blue),

          Box(boxColor: Colors.green),

          Box(boxColor: Colors.yellow),

          Box(boxColor: Colors.orange),

          Box(boxColor: Colors.red),
        ],
      ),
    );
  }
}
