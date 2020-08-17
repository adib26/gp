import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:SemiCollege/navbars/bottom_navbar.dart';
import 'package:SemiCollege/users/student/side_menu.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  void initState() {
    homeTitle = 'Home';
    //curWidget = ;
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
                  ico: Icons.home,
                  id: 1,
                  onPress: () {
                    setState(() {
                      active = 1;
                      //curWidget = nav_home();
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
                      //curWidget = NavCourses();
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
                      //curWidget = nav_payment();
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
                      //curWidget = nav_notification();
                      homeTitle = 'Notifications';
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
