import 'package:SemiCollege/services/database.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import '../upload_video_page.dart';

class Upvid {
  String uid2;
  String _path;
  String vidPath;
  FileType _pickType = FileType.custom;
  instractor ini = new instractor();
  Upvid();

  void openFileExplorer() async {
    try {
      _path = null;
//      if (_multiPick) {
//        _paths = await FilePicker.getMultiFilePath(
//            type: _pickType, allowedExtensions: ['mp4', 'mkv']);
//      } else {
      _path = await FilePicker.getFilePath(
          type: _pickType, allowedExtensions: ['mp4', 'mkv']);
//      }
      uploadToFirebase();
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
//    if (!mounted) return;
  }

  uploadToFirebase() {
//    if (_multiPick) {
//      _paths.forEach((fileName, filePath) => {upload(fileName, filePath)});
//    } else {
    String fileName = _path.split('/').last;
    String filePath = _path;
    upload(fileName, filePath);
//    }
  }

  upload(fileName, filePath) async {
    StorageReference storageRef = FirebaseStorage.instance
        .ref()
        .child('videos')
        .child(ini.createState().GetVideoName().toString());

    final StorageUploadTask uploadTask = storageRef.putFile(filePath);
//    setState(() {
    ini.createState().tasks.add(uploadTask);
//    });
    await uploadTask.onComplete.then((StorageTaskSnapshot snap) {
//      setState(() {
      vidPath = snap.storageMetadata.path;
    });
//    });
    String url = await storageRef.getDownloadURL();
    databaseservice db = databaseservice(uid: uid2);
    db.addvideoMetadatatoInstractor(
        url, ini.createState().GetVideoName().toString());
  }
}
