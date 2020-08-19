import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
class StudentFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: false,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Your Message',
          ),
        ),
        FlatButton(
          child: Text(
            'Send',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: kappbarcolor,
          onPressed: (){
            //
          },
        ),
      ],
    );
  }
}
