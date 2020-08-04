import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'package:SemiCollege/Constraint.dart';

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
      resizeToAvoidBottomPadding: false,
      backgroundColor: kappbackground,
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    Text(
                      kappname,
                      style: TextStyle(
                        color: kappbarcolor,
                        fontSize: 48,
                      ),
                    ),
                    DropdownButton(
                      hint: Text('select your type'),
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                              bottomLeft: Radius.circular(28),
                              topLeft: Radius.circular(28)),
                          color: ktextfieldauth),
                      child: TextFormField(
                        cursorColor: kappbarcolor,
                        validator: (val) =>
                            val.isEmpty ? 'Enter your username' : null,
                        decoration: new InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                              bottomLeft: Radius.circular(28),
                              topLeft: Radius.circular(28)),
                          color: ktextfieldauth),
                      child: TextFormField(
                        cursorColor: kappbarcolor,
                        validator: (val) =>
                            val.isEmpty ? 'Enter your E-mail' : null,
                        decoration: new InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(28),
                              bottomLeft: Radius.circular(28),
                              topLeft: Radius.circular(28)),
                          color: ktextfieldauth),
                      child: TextFormField(
                        cursorColor: kappbarcolor,
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
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
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
                        color: kappbarcolor,
                        textColor: ktextfieldauth,
                        onPressed: () async {
                          if (_formkey.currentState.validate()) {
                            dynamic result = await _auth.register(
                                username: username,
                                email: email,
                                password: password,
                                type: dropdownValue);

                            if (result == null) {
                              setState(() {
                                error = 'your credentials are already taken';
                              });
                            }
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      error.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Have an Account ?'),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      color: kappbarcolor,
                      textColor: ktextfieldauth,
                      child: Text('Sign-In'),
                      onPressed: () {
                        widget.toogleview();
                      }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
