import 'package:flutter/material.dart';
import 'package:gpprojectv01/authintication/register.dart';
import 'package:gpprojectv01/insHome/instractor.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:gpprojectv01/authintication/authintication.dart';
import 'package:gpprojectv01/services/database.dart';
import 'package:gpprojectv01/studentHome/student.dart';

// login ui

class login extends StatefulWidget {
  final Function toogleview;

  login({this.toogleview});

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final authService _auth = authService();
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
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
      body: Form(
        key: _formkey,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Color.fromRGBO(173, 65, 51, 1),
                          fontSize: 30,
                          fontFamily: 'Galada'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                      color: Color.fromRGBO(100, 35, 39, 0.3),
                      child: TextFormField(
                        decoration: new InputDecoration(
                            hintText: 'E-mail',
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        validator: (val) =>
                            val == null ? 'Enter your E-mail' : null,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                      color: Color.fromRGBO(100, 35, 39, 0.3),
                      child: TextFormField(
                        validator: (val) =>
                            val == null ? 'Enter your password' : null,
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
                      child: Text('Login'),
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          dynamic result = await _auth.login(email, password);

                          if (result == null) {
                            setState(() {
                              error = 'couldn\'t signin with this credentials';
                            });
                          }
//                          else {
//                            dynamic type = databaseservice(uid: result.uid)
//                                .searchforuserinlogin();
//
//                            if (type == 1) {
//                              student();
//                            } else {
//                              if (type == 2) {
//                                instractor();
//                              }
//                            }
//                          }
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Don\'t Have an Account ?'),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                            child: Text('Register'),
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
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
