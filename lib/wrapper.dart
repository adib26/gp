import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'authintication/authintication.dart';
import 'insHome/instractor.dart';
import 'main.dart';
import 'models/user.dart';
import 'services/auth.dart';
import 'studentHome/student.dart';
import 'package:provider/provider.dart';
import 'services/database.dart';

class wrapper extends StatelessWidget {
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
              return Container();
            } else {
              var userDocument = snapshot.data['type'];
              var instrausername = snapshot.data['username'];
              var uidd = user.uid;
              if (userDocument == 1) {
                return student();
              } else {
                return instractor(instrausername, uidd);
              }
            }
          });
    }
  }
}
