import 'package:flutter/material.dart';
import 'package:gpprojectv01/services/auth.dart';

class instractor extends StatefulWidget {
  @override
  _instractorState createState() => _instractorState();
}

class _instractorState extends State<instractor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Instractor'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                authService().signout();
              },
              icon: Icon(Icons.assignment_ind),
              label: Text('logout'))
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Text('Instractor'),
      )),
    );
  }
}
