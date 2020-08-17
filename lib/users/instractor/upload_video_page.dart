import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'package:SemiCollege/storage/uploadvideo.dart';
import 'classes/uplode_video.dart';

// ignore: must_be_immutable, camel_case_types
class instractor extends StatefulWidget {
  var insun, uid1;
  instractor({this.insun, this.uid1});

  @override
  _instractorState createState() =>
      _instractorState(insname: insun, uid2: uid1);
}

// ignore: camel_case_types
class _instractorState extends State<instractor> {
  String videoname;
  String insname;
  String uid2;
  String vidPath;
  List<StorageUploadTask> tasks = <StorageUploadTask>[];
  final _formkey = GlobalKey<FormState>();
  Upvid upp = new Upvid();
  _instractorState({this.insname, this.uid2});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];
    tasks.forEach((StorageUploadTask task) {
      final Widget tile = UploadTaskListTile(
        task: task,
        onDismissed: () => setState(() => tasks.remove(task)),
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
                  if (_formkey.currentState.validate()) upp.openFileExplorer();
                },
                child: new Text("Select your video"),
              ),
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

  // ignore: non_constant_identifier_names
  String GetVideoName() {
    return videoname;
  }
}
