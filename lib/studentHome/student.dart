import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'package:video_player/video_player.dart';
//import 'package:flutter/material.dart';
//import 'package:SemiCollege/insHome/instractor.dart';

class student extends StatefulWidget {
  @override
  _studentState createState() => _studentState();
}

class _studentState extends State<student>{
  VideoPlayerController _controller;
  dynamic data;
  String url;

  Future<dynamic> getData() async {
    final QuerySnapshot querySnapshot = await Firestore.instance.collection("videos").getDocuments();
    for (int i = 0; i < querySnapshot.documents.length; i++) {
      var a = querySnapshot.documents[i];
      print("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
      print(a.documentID);
      final DocumentReference document =   Firestore.instance.collection("videos").document(a.documentID);

      await document.get().then<dynamic>(( DocumentSnapshot snapshot) async{
        setState(() {
          data = snapshot.data;
          url = data['videourl'];
          /*print("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
          print(url);*/
        });
      });
      _controller = VideoPlayerController.network(url)
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          setState(() {});
        });
    }
  }
  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme
                .of(context)
                .primaryColor, // Red
          ),
        ),
      );
    }
    else {
      return Scaffold(
        appBar: AppBar(
          title: Text('student'),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  authService().signout();
                },
                icon: Icon(Icons.assignment_ind),
                label: Text('logout'))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _controller.value.initialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Container(
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ),
      );
    }
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}