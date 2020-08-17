import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';

class BottomNavBar extends StatefulWidget {
  final IconData ico;
  final int id;
  final Function onPress;
  BottomNavBar({this.ico, this.id, this.onPress});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onPress,
        child: Container(
          decoration: BoxDecoration(
            color: kSelectedButton,
          ),
          child: Center(
            child: Icon(
              widget.ico,
              size: 28,
              color: (widget.id == active) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
