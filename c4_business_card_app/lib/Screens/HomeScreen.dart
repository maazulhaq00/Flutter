// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          Text("Maaz Ul Haq"),
          Text("Software Engineer")
        ],
      ),
    );
  }
}