import 'package:SemiCollege/Constraint.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'authintication/authintication.dart';
import 'users/instractor/main_home.dart';
import 'models/user.dart';
import 'package:provider/provider.dart';
import 'users/student/MainStudentPage.dart';
import 'users/admin/adminHome.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<users>(context);
    //print(user);
    if (user == null) {
      print('loged out');
      return Authenticate();
    } else {
      print('listener changed');
      return StreamBuilder(
          stream: Firestore.instance
              .collection('users')
              .document(user.uid)
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Scaffold(
                body: Container(),
              );
            } else {
              var userDocument = snapshot.data['type'];
              username = snapshot.data['username'];
              //var uidd = user.uid;
              if (userDocument == 1) {
                return MainStudent();
              } else {
                if (userDocument == 2) {
                  return MainPage();
                } else {
                  return AdminHome();
                }
              }
            }
          });
    }
  }
}
