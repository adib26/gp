import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:flutter/widgets.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_home.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_courses.dart';
import 'package:SemiCollege/instractor/inst_navigation/nav_notifications.dart';
import 'inst_navigation/nav_payments.dart';

Widget curWidget = nav_home(); //current body of the instractor page

class Main_Page extends StatefulWidget {
  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappbarcolor,
        title: Text(
          home_title,
          style: TextStyle(color: kappbackground),
        ),
      ),
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
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = 1;
                          curWidget = nav_home();
                          home_title = 'Home';
                        });
                      },
                      child: bottomNavBar(ico: Icons.home, id: 1)),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = 2;
                          curWidget = nav_courses();
                          home_title = 'Courses';
                        });
                      },
                      child: bottomNavBar(
                          ico: Icons.account_balance_wallet, id: 2)),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = 3;
                          curWidget = nav_payment();
                          home_title = 'Payments';
                        });
                      },
                      child: bottomNavBar(ico: Icons.attach_money, id: 3)),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        active = 4;
                        curWidget = nav_notification();
                        home_title = 'Notifications';
                      });
                    },
                    child: bottomNavBar(
                      ico: Icons.message,
                      id: 4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//show bottomNavbar

class bottomNavBar extends StatefulWidget {
  Color curcol;
  IconData ico;
  Color icoColor;
  int id;
  bottomNavBar({this.curcol, this.ico, this.icoColor, this.id});

  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          //if button id equals active or (current button pressed id)
          color: (active == widget.id) ? kSelectedButton : kNotSelectedButton,
          border: Border(right: BorderSide(color: Colors.black, width: 1))),
      child: Center(
        child: Icon(
          widget.ico,
          color: (widget.id == active) ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
