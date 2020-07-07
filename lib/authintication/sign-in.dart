import 'package:flutter/material.dart';
import 'package:gpprojectv01/authintication/register.dart';

// login ui

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Login'),
                  ),
                  RaisedButton(
                      child: Text('Register'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => register()));
                      }),
                ],
              ),
            ]),
      ),
    );
  }
}
