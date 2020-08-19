import 'package:SemiCollege/users/admin/screens/add_teacher_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:SemiCollege/users/admin/screens/add_student_screen.dart';
import 'package:SemiCollege/users/admin/widgets/students_scrollbar.dart';
import '../../../Constraint.dart';
import 'package:SemiCollege/users/admin/widgets/floating_action_button.dart';

class AdminInstructors extends StatefulWidget {


  @override
  _AdminInstructorsState createState() => _AdminInstructorsState();
}

class _AdminInstructorsState extends State<AdminInstructors> {
  String _dropdownValue = 'Level 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: AdminButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => AddTeacherScreen());
      },
      ),
      body: Column(
        children: <Widget>[
          DropdownButton(
            hint: Text('select your type'),
            value: _dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            onChanged: (String newValue) {
              setState(() {
                _dropdownValue = newValue;
              });
            },
            items: <String>['Level 1', 'Level 2', 'Level 3','Level 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kappbackground,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    '$_dropdownValue Teachers',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  StudentsScrollbar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
