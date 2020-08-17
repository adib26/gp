import 'package:flutter/material.dart';
import 'package:SemiCollege/lists/ListTileBox_courses.dart';

class NavCourses extends StatefulWidget {
  @override
  _NavCoursesState createState() => _NavCoursesState();
}

class _NavCoursesState extends State<NavCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTileBox(
            title: 'pl2',
            ico: Icons.build,
            level: '2',
          ),
          ListTileBox(
            title: 'co',
            level: '3',
            ico: Icons.attach_money,
          ),
          ListTileBox(
            title: 'pl1',
            level: '1',
            ico: Icons.wifi,
          ),
          ListTileBox(
            title: 'ai',
            level: '3',
            ico: Icons.bubble_chart,
          ),
        ],
      ),
    );
  }
}
