import 'package:flutter/material.dart';
import 'package:gpprojectv01/insHome/instractor.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:gpprojectv01/studentHome/student.dart';

// register ui

class register extends StatefulWidget {
  final Function toogleview;

  register({this.toogleview});

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final authService _auth = authService();
  final _formkey = GlobalKey<FormState>();

  String dropdownValue = 'Student';
  String email;
  String password;
  String username;
  String error = '';
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
        child: Form(
          key: _formkey,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
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
                    child: TextFormField(
                      validator: (val) =>
                          val.isEmpty ? 'Enter your username' : null,
                      decoration: new InputDecoration(
                          hintText: 'username',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                      onChanged: (val) {
                        setState(() => username = val);
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                    color: Color.fromRGBO(100, 35, 39, 0.3),
                    child: TextFormField(
                      validator: (val) =>
                          val.isEmpty ? 'Enter your E-mail' : null,
                      decoration: new InputDecoration(
                          hintText: 'E-mail',
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                    color: Color.fromRGBO(100, 35, 39, 0.3),
                    child: TextFormField(
                      obscureText: true,
                      validator: (val) {
                        if (val.length > 0 && val.length < 6) {
                          return 'make sure your password is greater than 6 digits';
                        } else if (val.length == 0) {
                          return 'Enter your password';
                        } else {
                          return null;
                        }
                      },
                      decoration: new InputDecoration(
                        hintText: 'password',
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      ),
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                      child: Text('Register'),
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          dynamic result = _auth.register(
                              username: username,
                              email: email,
                              password: password,
                              type: dropdownValue);

                          if (result == null) {
                            setState(
                                () => error = 'please supply a valid email');
                          }
//                          else {
//                            if (dropdownValue == 'Student') {
//                              student();
//                            } else {
//                              instractor();
//                            }
//                          }
                        }
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an Account ?'),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          child: Text('Sign-In'),
                          onPressed: () {
                            widget.toogleview();
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    error.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
