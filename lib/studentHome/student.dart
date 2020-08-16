import 'package:SemiCollege/loading-screen/loading_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:SemiCollege/studentHome/play_video.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:SemiCollege/Constraint.dart';
class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return IntroPage();
  }
}

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key: key);
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  dynamic data;
  var username;
  Future<dynamic> getData() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseUser user = await _auth.currentUser();
    final DocumentReference document =
        Firestore.instance.collection("users").document(user.uid);

    await document.get().then<dynamic>((DocumentSnapshot snapshot) async {
      setState(() {
        data = snapshot.data;
        username = data['username'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Hello $username",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Center(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      color: kapplightcolor2,
                      onPressed: _start,
                      minWidth: 240,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Text(
                        "Lessons",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      );
  }

  void initState() {
    super.initState();
    getData();
  }

  void _start() async {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => PlayPage(),
      ),
    );
  }
}
