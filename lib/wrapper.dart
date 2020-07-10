import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gpprojectv01/authintication/authintication.dart';
import 'package:gpprojectv01/insHome/instractor.dart';
import 'package:gpprojectv01/main.dart';
import 'package:gpprojectv01/models/user.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:gpprojectv01/studentHome/student.dart';
import 'package:provider/provider.dart';
import 'package:gpprojectv01/services/database.dart';

class wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<users>(context);
    print(user);
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
              if (userDocument == 1) {
                return student();
              } else {
                return instractor();
              }
            }
          });
    }
  }
}
