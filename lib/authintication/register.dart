import 'package:flutter/material.dart';

// register ui

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  String dropdownValue = 'Student';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 192, 67, 1),
      appBar: AppBar(
        title: Text(
          'E-learning',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Color.fromRGBO(77, 69, 87, 1),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Register',
                style: TextStyle(
                    color: Color.fromRGBO(173, 65, 51, 1),
                    fontSize: 30,
                    fontFamily: 'Galada'),
              ),
              DropdownButton(
                hint: Text('select your type'),
                elevation: 10,
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Student', 'Teacher']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                color: Color.fromRGBO(100, 35, 39, 0.3),
                child: TextField(
                  decoration: new InputDecoration(
                      hintText: 'username',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                color: Color.fromRGBO(100, 35, 39, 0.3),
                child: TextField(
                  decoration: new InputDecoration(
                    hintText: 'password',
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(child: Text('Register'), onPressed: () {}),
            ]),
      ),
    );
  }
}