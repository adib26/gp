import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:SemiCollege/navbars/bottom_navbar.dart';
import 'package:SemiCollege/users/student/side_menu.dart';
import 'package:SemiCollege/users/admin/screens/admin_courses_screen.dart';
import 'package:SemiCollege/users/admin/screens/admin_students_screen.dart';
import 'package:SemiCollege/users/admin/screens/admin_instructors_screen.dart';
import 'package:SemiCollege/users/student/videos_play_button.dart';
class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  void initState() {
    homeTitle = 'Home';
    curWidget = AdminCourses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappbarcolor,
        title: Text(
          homeTitle,
          style: TextStyle(color: kappbackground),
        ),
      ),
      drawer: SideMenu(),
      backgroundColor: kappbackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: curWidget,
          ),
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                BottomNavBar(
                  ico: Icons.library_books,
                  id: 1,
                  onPress: () {
                    setState(() {
                      active = 1;
                      curWidget = AdminCourses();
                      homeTitle = 'Courses';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.person_pin,
                  id: 2,
                  onPress: () {
                    setState(() {
                      active = 2;
                      curWidget = AdminStudents();
                      homeTitle = 'Students';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.person,
                  id: 3,
                  onPress: () {
                    setState(() {
                      active = 3;
                      curWidget = AdminInstructors();
                      homeTitle = 'Instructors';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.laptop,
                  id: 4,
                  onPress: () {
                    setState(() {
                      active = 4;
                      curWidget = Videos();
                      homeTitle = 'Lectures';
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
