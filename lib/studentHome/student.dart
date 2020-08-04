//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
//import 'package:video_player/video_player.dart';
//import 'package:flutter/material.dart';
//import 'package:SemiCollege/insHome/upload_video_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:SemiCollege/studentHome/play_video.dart';

class Student extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video List Play Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('student'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                authService().signout();
              },
              icon: Icon(Icons.assignment_ind),
              label: Text('logout'))
        ],
      ),
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
                "Welcome Student",
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
                    color: Colors.white,
                    onPressed: _start,
                    minWidth: 240,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Text(
                      "Play",
                      style: TextStyle(
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

  void _start() async {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => PlayPage(),
      ),
    );
  }
}
