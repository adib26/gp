import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class databaseservice {
  final String uid;
  databaseservice({this.uid});
  var uuid = Uuid();

  //collection refrence

  final CollectionReference usercollection =
      Firestore.instance.collection("users");
//  final CollectionReference videocollection =
//      Firestore.instance.collection("videos");

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
    return await usercollection
        .document(uid)
        .collection('videos')
        .document(uuid.v4())
        .setData({'videoname': vidname, 'videourl': path, 'instractorId': uid});
  }
}
