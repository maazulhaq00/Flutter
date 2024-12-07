import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  // int count = 0;

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [

        // Text("$count"),
          
          ElevatedButton(
            onPressed: () {
              // count++;
              print("object");
            },
            child: Text("button"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber), 
              foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 190, 9, 9))
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("button"),
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(Colors.amber), 
            //   foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 190, 9, 9))
            // ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("button"),
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(Colors.amber), 
            //   foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 190, 9, 9))
            // ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite,),
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(Colors.amber), 
            //   foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 190, 9, 9))
            // ),
            tooltip: 'Fav',
            
          ),
      ]),
    );
  }
}