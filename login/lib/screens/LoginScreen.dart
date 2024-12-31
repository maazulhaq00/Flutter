// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/screens/WelcomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = "";

  void login() {
    if (emailController.text == "maaz@abc.com" &&
        passwordController.text == "maaz1234") {
      // Login
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(email: emailController.text),
        ),
      );
    } else {
      setState(() {
        errorMessage = "Incorrect Email or Password";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 8,
          ),
          OutlinedButton(onPressed: login, child: Text('Login')),
          SizedBox(
            height: 8,
          ),
          Text(
            errorMessage,
            style: TextStyle(color: Colors.red),
          )
        ]),
      ),
    );
  }
}
