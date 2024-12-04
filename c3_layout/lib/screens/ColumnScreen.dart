// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // verticalDirection: VerticalDirection.up,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Text("Container 01"),
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            child: Text("Container 02"),
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            child: Text("Container 03"),
            color: Colors.purple,
          ),
          Container(
            // width: double.infinity,
            height: double.infinity,
          )

        ]
      ),
    );
  }
}