import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  
  final Color boxColor;
  
  const Box({super.key, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 7,
            color: boxColor,
            child: Center(
              child: Text("Hello World", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
          );
  }
}