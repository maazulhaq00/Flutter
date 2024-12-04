import 'package:flutter/material.dart';

class LayoutChallenge extends StatelessWidget {
  const LayoutChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Container(
          width: 100,
          color: Colors.blue,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow.shade500,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow.shade100,
            ),
          ],
        ),
        Container(
          width: 100,
          color: Colors.red,
        )
      ]),
    );
  }
}
