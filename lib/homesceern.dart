import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Auth/fireclass.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink.shade400,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: Icon(Icons.logout),
          ),

          title: Text("Information"),
          actions: [
          ],
        ),
        body: Column(
          children: [
            Card(
              child: Container(
                color: Colors.pink.shade400,
                height: 60,
                width: double.infinity,
                child: Center(
                    child: Text("${_auth.currentUser!.email}",
                        style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
            ),
            Card(
              child: Container(
                color: Colors.pink.shade400,
                height: 60,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "${_auth.currentUser!.uid}",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
