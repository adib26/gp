import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nav_courses extends StatefulWidget {
  @override
  _nav_coursesState createState() => _nav_coursesState();
}

class _nav_coursesState extends State<nav_courses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTileBox(
            title: 'pl2',
            ico: Icons.build,
            level: '2',
          ),
          ListTileBox(
            title: 'co',
            level: '3',
            ico: Icons.attach_money,
          ),
          ListTileBox(
            title: 'pl1',
            level: '1',
            ico: Icons.wifi,
          ),
          ListTileBox(
            title: 'ai',
            level: '3',
            ico: Icons.bubble_chart,
          ),
        ],
      ),
    );
  }
}

class ListTileBox extends StatefulWidget {
  IconData ico;
  String title;
  String level;

  ListTileBox({this.title, this.ico, this.level});

  @override
  _ListTileBoxState createState() => _ListTileBoxState();
}

class _ListTileBoxState extends State<ListTileBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.all(Radius.circular(55)),
        color: Colors.white,
      ),
      child: RaisedButton(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        elevation: 3,
        onPressed: () {},
        child: ListTile(
          title: Text(widget.title),
          leading: Icon(
            widget.ico,
            color: Colors.black,
          ),
          subtitle: Text('Level: ' + widget.level),
          onTap: () {
            setState(() {});
            print(widget.title);
          },
        ),
      ),
    );
  }
}
