import 'dart:math';

import 'package:SemiCollege/loading-screen/loading_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:SemiCollege/loading-screen/loading-screen.dart';
import 'animation_1.dart';

// login ui
class login extends StatefulWidget {
  final Function toogleview;

  login({this.toogleview});

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final authService _auth = authService();
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  String error = '';
  Load load;
//  static double radius = 6.0;
//  double intradius = 10;
//  Animation animation_rotation;
//  Animation animation_radius_in;
//  Animation animation_radius_out;
//  static AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load = new Load();
  }

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
                  Container(
                    child: load,
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
                          //Dialog_loading dia =
                          //    new Dialog_loading(_scaffoldKey.currentContext);
                          //await dia.start();
                          BuildContext dialogContext;
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              dialogContext = context;
                              return Dialog(
                                backgroundColor: Colors.white,
                                insetPadding: EdgeInsets.symmetric(
                                    vertical: 250, horizontal: 100),
                                child: SpinKitWave(
                                  color: kappbarcolor,
                                  type: SpinKitWaveType.start,
                                  size: 50,
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                          );
                          print('\n\n after loading splash\n\n');
                          dynamic result = await _auth.login(email, password);
                          print('\n\n\ after result \n\n');
//                          await dia.end();
                          Navigator.pop(dialogContext);
                          print('after poping');
                          result = _auth.approve(result);
                          print('\n\n after approve \n\n');
                          if (result == null) {
                            setState(() {
                              error = 'couldn\'t signin with this credentials';
                            });
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

//class smallDot extends StatefulWidget {
//  final double loc;
//  final double rad;
//  smallDot(this.rad, this.loc);
//
//  @override
//  _smallDotState createState() => _smallDotState();
//}
//
//class _smallDotState extends State<smallDot> {
//  @override
//  Widget build(BuildContext context) {
//    return //RotationTransition(
//        //turns: _loginState.controller,
//        // child:
//        Transform.translate(
//      offset: Offset(_loginState.radius * cos(widget.loc * pi / 4),
//          _loginState.radius * sin(widget.loc * pi / 4)),
//      child: Center(
//        child: Container(
//          width: 4,
//          height: 4,
//          decoration:
//              BoxDecoration(shape: BoxShape.circle, color: kappbarcolor),
//        ),
//      ),
//    );
//    //   );
//  }
//}
