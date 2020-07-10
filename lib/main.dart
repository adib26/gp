import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpprojectv01/authintication/authintication.dart';
import 'package:gpprojectv01/authintication/sign-in.dart';
import 'package:gpprojectv01/models/user.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:gpprojectv01/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<users>.value(
      value: authService().user,
      child: MaterialApp(
        home: wrapper(),
      ),
    );
  }
}
