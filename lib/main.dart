import 'dart:async';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:p14/Auth/fireclass.dart';
import 'package:p14/homesceern.dart';
import 'package:p14/login.dart';
import 'package:p14/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Slpesh(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home':(context)=>Homepage(),
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
    check(context);
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

  void check(BuildContext context) {
    if(Auth().currentUser(context)==true)
    {
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) {
              return Homepage();
            },
          ),
        );
      });
    }
    else
    {
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) {
              return Login();
            },
          ),
        );
      });
    }
  }
}
