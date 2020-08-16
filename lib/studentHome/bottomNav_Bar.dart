//import 'package:flutter/material.dart';
//import 'package:SemiCollege/Constraint.dart';
//import 'package:flutter/widgets.dart';
//import 'package:SemiCollege/studentHome/student_navigation/nav_home.dart';
//import 'package:SemiCollege/studentHome/student_navigation/nav_courses.dart';
//import 'package:SemiCollege/studentHome/student_navigation/nav_notifications.dart';
//import 'package:SemiCollege/studentHome/student_navigation/nav_payments.dart';
//
//Widget curWidget = nav_home();
//
//class BottomNav extends StatefulWidget {
//  @override
//  _BottomNavState createState() => _BottomNavState();
//}
//
//class _BottomNavState extends State<BottomNav> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 50,
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: GestureDetector(
//                onTap: () {
//                  setState(() {
//                    active = 1;
//                    curWidget = nav_home();
//                    homeTitle = 'Home';
//                  });
//                },
//                child: bottomNavBar(ico: Icons.home, id: 1)),
//          ),
//          Expanded(
//            child: GestureDetector(
//                onTap: () {
//                  setState(() {
//                    active = 2;
//                    curWidget = nav_courses();
//                    homeTitle = 'Courses';
//                  });
//                },
//                child: bottomNavBar(ico: Icons.account_balance_wallet, id: 2)),
//          ),
//          Expanded(
//            child: GestureDetector(
//                onTap: () {
//                  setState(() {
//                    active = 3;
//                    curWidget = nav_payment();
//                    homeTitle = 'Payments';
//                  });
//                },
//                child: bottomNavBar(ico: Icons.attach_money, id: 3)),
//          ),
//          Expanded(
//            child: GestureDetector(
//              onTap: () {
//                setState(() {
//                  active = 4;
//                  curWidget = nav_notification();
//                  homeTitle = 'Notifications';
//                });
//              },
//              child: bottomNavBar(
//                ico: Icons.location_city,
//                id: 4,
//              ),
//            ),
//          ),
//          Expanded(
//            child: GestureDetector(
//              onTap: () {
//                setState(() {
//                  active = 5;
//                  curWidget = nav_notification();
//                  homeTitle = 'Notifications';
//                });
//              },
//              child: bottomNavBar(
//                ico: Icons.receipt,
//                id: 5,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class bottomNavBar extends StatefulWidget {
//  final IconData ico;
//  final int id;
//  final Function onPress;
//  bottomNavBar({this.ico, this.id, this.onPress});
//
//  @override
//  _bottomNavBarState createState() => _bottomNavBarState();
//}
//
//class _bottomNavBarState extends State<bottomNavBar> {
//  @override
//  Widget build(BuildContext context) {
//    return Expanded(
//      child: GestureDetector(
//        onTap: widget.onPress,
//        child: Container(
//          decoration: BoxDecoration(
//            color: kSelectedButton,
//          ),
//          child: Center(
//            child: Icon(
//              widget.ico,
//              size: 28,
//              color: (widget.id == active) ? Colors.white : Colors.black,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
