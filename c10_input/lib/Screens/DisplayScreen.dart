import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String name;

  const DisplayScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome, $name"),),
    );
  }
}
