import 'package:SemiCollege/loading-screen/loading_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// login ui
class login extends StatefulWidget {
  final Function toogleview;

  login({this.toogleview});

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final authService _auth = authService();
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      backgroundColor: kappbackground,
      body: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: <Widget>[
                  Text(
                    kappname,
                    style: TextStyle(
                      color: kappbarcolor,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(28),
                            bottomLeft: Radius.circular(28),
                            topRight: Radius.circular(28)),
                        color: ktextfieldauth),
                    child: TextFormField(
                      cursorColor: kappbarcolor,
                      decoration: new InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'E-mail',
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      ),
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                      validator: (val) =>
                          val.length == 0 ? 'Enter your E-mail' : null,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(28),
                            bottomLeft: Radius.circular(28),
                            bottomRight: Radius.circular(28)),
                        color: ktextfieldauth),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: kappbarcolor,
                      validator: (val) =>
                          val.length == 0 ? 'Enter your password' : null,
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
                  Container(
                    child: RaisedButton(
                      child: Text(
                        'SIGN IN',
                      ),
                      color: kappbarcolor,
                      textColor: ktextfieldauth,
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          Dialog_loading dia = new Dialog_loading(
                              bc: _scaffoldKey.currentContext);
                          await dia.start();
                          //print('\n\n after loading splash\n\n');
                          dynamic result = await _auth.login(email, password);
                          //print('\n\n\ after result \n\n');
                          await Navigator.of(_scaffoldKey.currentContext,
                                  rootNavigator: false)
                              .pop();
                          //print('after poping');
                          result = await _auth.approve(result);
                          //print('\n\n after approve \n\n');
                          if (result == null) {
//                            Navigator.pop(context);
                            setState(() {
                              error = 'couldn\'t signin with this credentials';
                            });
                          } else {
//                            await Navigator.pop(context);
                            //_auth.approve(result);
                          }
                        }
                      },
                      splashColor: Colors.blueGrey,
                    ),
                  ),
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
              flex: 2,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Don\'t Have an Account ?'),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                    child: Text(
                      'Register',
                    ),
                    color: kappbarcolor,
                    textColor: ktextfieldauth,
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
    );
  }
}
