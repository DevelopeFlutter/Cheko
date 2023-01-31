import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

Future<User?> createAccount(
    String name, String email, String password, String number) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      user.updateProfile(displayName:name );
      print("Account created Succesfull");
      UserModel userModel = UserModel(
          userEmail: email, userName: name, uid: _auth.currentUser!.uid);
      await _firestore
          .collection('users')
          .doc(_auth.currentUser?.uid)
          .set(userModel.toJson());

      return user;
    } else {
      print("Account Registration Failed");

      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    User? user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Login Succesfull");

      return user;
    } else {
      print("Login Failed");

      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future logout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut().then((value) {
      //Navigate to other screen
      if (_auth.currentUser != null) {
        //Any Screen which you have want to navigate
      } else {
        //Any Screen which you have want to navigate

      }
    });
  } catch (e) {
    print(e);
    return null;
  }
}
