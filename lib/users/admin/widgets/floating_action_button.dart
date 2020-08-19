import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';

class AdminButton extends StatelessWidget {
  AdminButton({this.onPressed});
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: kappbarcolor,
        child: Icon(
        Icons.add,
    ),
    onPressed: onPressed,
    );//showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
  }
}
