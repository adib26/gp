import 'package:flutter/material.dart';
import 'package:gpprojectv01/authintication/register.dart';
import 'sign-in.dart';

class authenticate extends StatefulWidget {
  @override
  _authenticateState createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  bool showSignIn = true;

  void toogleview() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn == true) {
      return login(
        toogleview: toogleview,
      );
    } else {
      return register(
        toogleview: toogleview,
      );
    }
  }
}
