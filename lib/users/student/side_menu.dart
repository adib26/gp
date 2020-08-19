import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
class SideMenu extends StatelessWidget {
  final Function FeedbackOnTap;
  SideMenu({this.FeedbackOnTap});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                child: Text(
                'Side menu',
                style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                ),
                ListTile(
                leading: Icon(Icons.input),
                title: Text('Welcome'),
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Profile'),
                  ),
                ListTile(
                leading: Icon(Icons.settings),
            title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Feedback'),
              onTap: FeedbackOnTap,
              ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: (){
                authService().signout();
              },
            ),
          ],
        ),
      );
  }
}
