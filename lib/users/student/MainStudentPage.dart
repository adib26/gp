import 'package:SemiCollege/users/student/students_feedback.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/users/student/side_menu.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:flutter/widgets.dart';
import 'package:SemiCollege/users/student/student_navigation/nav_home.dart';
import 'package:SemiCollege/users/student/student_navigation/nav_courses.dart';
import 'package:SemiCollege/users/student/student_navigation/nav_notifications.dart';
import 'package:SemiCollege/users/student/student_navigation/nav_payments.dart';
import 'package:SemiCollege/users/student/student_navigation/test.dart';
import 'package:SemiCollege/navbars/bottom_navbar.dart';

import '../../Constraint.dart';

class MainStudent extends StatefulWidget {
  @override
  _MainStudentState createState() => _MainStudentState();
}

class _MainStudentState extends State<MainStudent> {
  @override
  void initState() {
    curWidget = nav_home(); //current body of the instractor page
    active = 1;
    homeTitle = 'Home';
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
      drawer: SideMenu(FeedbackOnTap : (){
        setState(() {
          curWidget = StudentFeedback();
          Navigator.pop(context);
        });
      }),
      body: Column(
        children: <Widget>[
          Expanded(
            child: curWidget,
          ),
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                BottomNavBar(
                  ico: Icons.home,
                  id: 1,
                  onPress: () {
                    setState(() {
                      active = 1;
                      curWidget = nav_home();
                      homeTitle = 'Home';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.account_balance_wallet,
                  id: 2,
                  onPress: () {
                    setState(() {
                      active = 2;
                      curWidget = NavCourses();
                      homeTitle = 'Courses';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.attach_money,
                  id: 3,
                  onPress: () {
                    setState(() {
                      active = 3;
                      curWidget = nav_payment();
                      homeTitle = 'Payments';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.message,
                  id: 4,
                  onPress: () {
                    setState(() {
                      active = 4;
                      curWidget = nav_notification();
                      homeTitle = 'Notifications';
                    });
                  },
                ),
                BottomNavBar(
                  ico: Icons.question_answer,
                  id: 5,
                  onPress: () {
                    setState(() {
                      active = 5;
                      curWidget = NavQuiz();
                      homeTitle = 'Quiz';
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
