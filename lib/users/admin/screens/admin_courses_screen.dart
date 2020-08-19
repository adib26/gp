import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import '../../../Constraint.dart';
import '../../../lists/ListTileBox_courses.dart';
import 'package:SemiCollege/users/admin/screens/add_course_screen.dart';
import 'package:SemiCollege/users/admin/widgets/floating_action_button.dart';
class AdminCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappbackground,
      floatingActionButton: AdminButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
      ),
      body: Container(
        child:ListView(
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
      ),
    );
  }
}
