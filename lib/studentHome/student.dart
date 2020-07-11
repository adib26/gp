import 'package:flutter/material.dart';
import 'package:gpprojectv01/services/auth.dart';

class student extends StatefulWidget {
  @override
  _studentState createState() => _studentState();
}

class _studentState extends State<student> {
  String _fileString;
  int _fileLength = 0;
  String _filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text('student'),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  authService().signout();
                },
                icon: Icon(Icons.assignment_ind),
                label: Text('logout'))
          ],
        ),
        body: Container());
  }
}
