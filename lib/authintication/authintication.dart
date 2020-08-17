import 'package:flutter/material.dart';
import 'package:SemiCollege/authintication/register.dart';
import 'sign-in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
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
