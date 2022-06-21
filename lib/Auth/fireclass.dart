import 'package:firebase_auth/firebase_auth.dart';
import 'package:p14/login.dart';


class Auth{
  FirebaseAuth _auth = FirebaseAuth.instance;

  void Login(
      String e1,
      String p1,
      ) {
    _auth.createUserWithEmailAndPassword(email: e1, password: p1);
  }
}