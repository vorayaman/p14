import 'dart:async';

import 'package:flutter/material.dart';
import 'package:p14/login.dart';
import 'package:p14/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Slpesh(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    ),
  );
}

class Slpesh extends StatefulWidget {
  const Slpesh({Key? key}) : super(key: key);

  @override
  State<Slpesh> createState() => _SlpeshState();
}

class _SlpeshState extends State<Slpesh> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade400,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fastfood,
                color: Colors.white,
                size: 100,
              ),
              Text(
                "Taste Me",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
