import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:SemiCollege/models/user.dart';
import 'package:flutter/material.dart';
import 'database.dart';

class authService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  users _userfromfirebaseUser(FirebaseUser user) {
    return user != null ? users(uid: user.uid) : null;
  }

  Stream<users> get user {
    return _auth.onAuthStateChanged.map(_userfromfirebaseUser);
  }

//login

  Future login(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userfromfirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//register

  Future register(
      {String username, String email, String password, String type}) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      if (type == 'Student') {
        databaseservice db = await databaseservice(uid: user.uid);
        db.adduserrecord(username, email, password, 1);
      } else {
        databaseservice db = await databaseservice(uid: user.uid);
        db.adduserrecord(username, email, password, 2);
      }
      return _userfromfirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// logout
  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
