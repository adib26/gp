import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
