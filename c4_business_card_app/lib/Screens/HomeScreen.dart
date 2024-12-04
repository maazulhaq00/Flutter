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
          Text(
            "Maaz Ul Haq",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Code Pro'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            color: Colors.white,
            child: Row(children: [
              Icon(
                Icons.phone,
                color: Colors.deepPurple.shade500,
              ),
              SizedBox(width: 10.0,),
              Text(
                '0311-1234567',
                style: TextStyle(
                  color: Colors.deepPurple.shade800,
                  fontSize: 20,
                  fontFamily: 'Source Code Pro',
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
