import 'package:c10_input/Screens/DisplayScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final name = TextEditingController();

  void handleSubmit() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DisplayScreen(name: name.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: handleSubmit,
            child: Text("Submit"),
          )
        ],
      ),
    );
  }
}
