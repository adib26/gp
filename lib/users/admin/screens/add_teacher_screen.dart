import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import '../../../Constraint.dart';

class AddTeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(26.0),
        decoration: BoxDecoration(
          color: kappbackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Teacher',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: kappbarcolor,
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Teacher Name',
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Level ?',
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'ID',
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'E-Mail',
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: kappbarcolor,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
