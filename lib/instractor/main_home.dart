import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:flutter/widgets.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_home.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_courses.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_notifications.dart';
import 'inst_navigation/nav_payments.dart';
import 'package:SemiCollege/studentHome/side_menu.dart';

Widget curWidget = nav_home(); //current body of the instractor page

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                      curWidget = nav_courses();
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//show bottomNavBar !!!!!!!!!!!!

class BottomNavBar extends StatefulWidget {
  final IconData ico;
  final int id;
  final Function onPress;
  BottomNavBar({this.ico, this.id, this.onPress});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onPress,
        child: Container(
          decoration: BoxDecoration(
            color: kSelectedButton,
          ),
          child: Center(
            child: Icon(
              widget.ico,
              size: 28,
              color: (widget.id == active) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
