import 'package:flutter/material.dart';
import 'package:gpprojectv01/authintication/register.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:gpprojectv01/authintication/authintication.dart';

// login ui

class login extends StatefulWidget {
  final Function toogleview;

  login({this.toogleview});

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  //final AuthService _auth = AuthService();
  String email;
  String password;

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
                    child: TextField(
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
                    child: TextField(
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
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
