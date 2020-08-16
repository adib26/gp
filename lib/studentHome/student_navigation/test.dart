import 'package:flutter/material.dart';
import 'package:SemiCollege/studentHome/student_navigation/QuizModule/the_quiz_room.dart';
import 'package:SemiCollege/Constraint.dart';

class NavQuiz extends StatefulWidget {
  @override
  _NavQuizState createState() => _NavQuizState();
}

class _NavQuizState extends State<NavQuiz> {
  @override
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ready!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a Quiz to test yourself'),
                Text('Don\'t cheat yourself :)'),
                Text('Best wishes.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ready'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => QuizRoom()
                ),
                );
              },
            ),
          ],
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: FlatButton(
                        textColor: Colors.black,
                        color: kapplightcolor,
                        child: Text(
                          'Computer Vision',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: (){
                          setState(() {
                            _showMyDialog();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: FlatButton(
                        textColor: Colors.black,
                        color: kapplightcolor,
                        child: Text(
                          'Math',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: (){
                          setState(() {
                            _showMyDialog();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

