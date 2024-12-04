// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text("I Am Rich"),
        ),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
        child: Image(
          // image: NetworkImage(
          //     'https://gratisography.com/wp-content/uploads/2024/10/gratisography-cool-cat-800x525.jpg'),
          image: AssetImage('images/diamond.png'),
        ),
      ),
    ),
  ));
}
