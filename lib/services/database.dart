import 'package:cloud_firestore/cloud_firestore.dart';

class databaseservice {
  final String uid;
  databaseservice({this.uid});

  //collection refrence
  final CollectionReference videoscollection =
      Firestore.instance.collection("videos");
  final CollectionReference usercollection =
      Firestore.instance.collection("users");
//  final CollectionReference instractorcollection =
//      Firestore.instance.collection("instractor");

  Future adduserrecord(
      String username, String email, String password, int type) async {
    return await usercollection.document(uid).setData({
      'username': username,
      'email': email,
      'password': password,
      'type': type
    });
  }
}
