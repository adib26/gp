import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gpprojectv01/services/auth.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:gpprojectv01/storage/uploadvideo.dart';

class instractor extends StatefulWidget {
  var insun;

  instractor(this.insun);

  @override
  _instractorState createState() => _instractorState(insun);
}

class _instractorState extends State<instractor> {
  String videoname;
  String insname;
  String _path;

  Map<String, String> _paths;
  String _extension;
  FileType _pickType = FileType.custom;
  bool _multiPick = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<StorageUploadTask> _tasks = <StorageUploadTask>[];
  final _formkey = GlobalKey<FormState>();
  String done = '';

  _instractorState(this.insname);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];
    _tasks.forEach((StorageUploadTask task) {
      final Widget tile = UploadTaskListTile(
        task: task,
        onDismissed: () => setState(() => _tasks.remove(task)),
        //onDownload: () => downloadFile(task.lastSnapshot.ref),
      );
      children.add(tile);
    });

    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 192, 67, 1),
      appBar: AppBar(
        title: Text('Instractor'),
        backgroundColor: Color.fromRGBO(77, 69, 87, 1),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                authService().signout();
              },
              icon: Icon(Icons.assignment_ind),
              label: Text('logout'))
        ],
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: 'Enter video name',
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'enter your video name';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      videoname = val;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OutlineButton(
                onPressed: () async {
                  if (_formkey.currentState.validate()) openFileExplorer();
                },
                child: new Text("Select your video"),
              ),
              Text(done),
              Flexible(
                child: ListView(
                  children: children,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openFileExplorer() async {
    try {
      _path = null;
      if (_multiPick) {
        _paths = await FilePicker.getMultiFilePath(
            type: _pickType, allowedExtensions: ['mp4', 'mkv']);
      } else {
        _path = await FilePicker.getFilePath(
            type: _pickType, allowedExtensions: ['mp4', 'mkv']);
      }
      uploadToFirebase();
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
    if (!mounted) return;
  }

  uploadToFirebase() {
    if (_multiPick) {
      _paths.forEach((fileName, filePath) => {upload(fileName, filePath)});
    } else {
      String fileName = _path.split('/').last;
      String filePath = _path;
      upload(fileName, filePath);
    }
  }

  upload(fileName, filePath) {
    _extension = fileName.toString().split('.').last;
    StorageReference storageRef =
        FirebaseStorage.instance.ref().child('videos/$insname/$videoname');
    final StorageUploadTask uploadTask = storageRef.putFile(
      File(filePath),
      StorageMetadata(
        contentType: '$_pickType/$_extension',
      ),
    );
    setState(() {
      _tasks.add(uploadTask);
    });
  }
}
