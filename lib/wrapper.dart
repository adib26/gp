import 'package:SemiCollege/instractor/upload_video_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'authintication/authintication.dart';
import 'instractor/main_home.dart';
import 'models/user.dart';
import 'package:provider/provider.dart';
import 'studentHome/MainStudentPage.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<users>(context);
    //print(user);
    if (user == null) {
      return authenticate();
    } else {
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
              var instrausername = snapshot.data['username'];
              var uidd = user.uid;
              if (userDocument == 1) {
                return MainStudent();
                //return Scaffold(body: EzTransition());
              } else {
                return Main_Page();
              }
            }
          });
    }
  }
}
