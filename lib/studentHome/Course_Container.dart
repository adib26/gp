import 'package:flutter/material.dart';

class CourseContainer extends StatelessWidget {
  final label;
  CourseContainer(this.label);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Color(0xFF000000)
          ),
        ),
      ),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color(0xFF8D8E98),
          borderRadius: BorderRadius.circular(10.0)
      ),
      //height: 80.0,
    );
  }
}