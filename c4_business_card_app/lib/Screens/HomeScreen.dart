// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:c4_business_card_app/widgets/CardBox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 70,
          ),
          CardBox(cardIcon: Icons.phone, cardText: '0311-1234567'),
          CardBox(cardIcon: Icons.mail, cardText: 'maazulhaq@gmail.com'),
          CardBox(cardIcon: Icons.home, cardText: 'North Karachi'),
          
          ElevatedButton(
            onPressed: () {
              print("Hello");
            },
            child: Text("Press !"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple), 
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
