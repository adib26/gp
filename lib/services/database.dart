import 'package:cloud_firestore/cloud_firestore.dart';

class databaseservice {
  final String uid;
  databaseservice({this.uid});

  //collection refrence

  final CollectionReference usercollection =
      Firestore.instance.collection("users");
  final CollectionReference videocollection =
      Firestore.instance.collection("videos");

  Future adduserrecord(
      String username, String email, String password, int type) async {
    return await usercollection.document(uid).setData({
      'username': username,
      'email': email,
      'password': password,
      'type': type
    });
  }

  Future addvideoMetadatatoInstractor(String path, String vidname) async {
    //String id = videocollection.document().documentID;
    return await videocollection
        .document()
        .setData({'videoname': vidname, 'videourl': path, 'instractorId': uid});
  }
}
