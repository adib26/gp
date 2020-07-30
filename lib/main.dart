import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'services/auth.dart';
import 'wrapper.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<users>.value(
      value: authService().user,
      child: MaterialApp(
        home: SafeArea(child: wrapper()),
      ),
    );
  }
}
