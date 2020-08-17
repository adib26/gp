import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'services/auth.dart';
import 'wrapper.dart';
import 'authintication/register.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<users>.value(
      value: authService().user,
      child: MaterialApp(
        home: SafeArea(child: Wrapper()),
        routes: {
          'register': (context) => register(),
        },
      ),
    );
  }
}
