import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int count = 0;
  
  void changeIndex() {
    setState(() {
      index = Random().nextInt(2000);
    });
  }
  void inc() {
    setState(() {
      count++;
    });
  }

  void dec() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Count: $count"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                inc();
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                dec();
              },
              icon: Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () {
                reset();
              },
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        Text(nouns[index]),
        ElevatedButton(
          onPressed: () {
            changeIndex();
          },
          child: Text("New Noun"),
        )
      ]),
    );
  }
}
