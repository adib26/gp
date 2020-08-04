import 'package:SemiCollege/Constraint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SemiCollege/services/auth.dart';
import 'dart:math';

///
/// Widget for displaying loading animation and doing background work at the same time.
///
double radius = 0.0;
int type = 0;
AnimationController control;

class EzTransition extends StatefulWidget {
  //dynamic email, pass;
  //EzTransition(this.email, this.pass);
  EzTransition();
  @override
  _EzTransitionState createState() => _EzTransitionState();
}

class _EzTransitionState extends State<EzTransition>
    with SingleTickerProviderStateMixin {
  final authService _auth = authService();
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;
  Animation<double> animation_rotation;

  final double intradius = 16;

  @override
  void deactivate() {
    // TODO: implement deactivate
    control.dispose();
    super.deactivate();
  }

  @override
  void initState() {
    super.initState();
    animate();
    //epo();
  }

  Function animate() {
    control = AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation_rotation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
        parent: control, curve: Interval(0.0, 1.0, curve: Curves.linear)));

    animation_radius_in = Tween<double>(begin: 1.0, end: 0.3).animate(
        CurvedAnimation(
            parent: control,
            curve: Interval(0.75, 1.0, curve: Curves.elasticIn)));
    animation_radius_out = Tween<double>(begin: 0.3, end: 1.0).animate(
        CurvedAnimation(
            parent: control,
            curve: Interval(0.0, 0.25, curve: Curves.elasticOut)));

    control.addListener(() {
      setState(() {
        if (control.value >= 0.75 && control.value <= 1.0) {
          radius = animation_radius_in.value * intradius;
        } else if (control.value >= 0.0 && control.value <= 0.25) {
          radius = animation_radius_out.value * intradius;
        }
      });
    });

    control.repeat();
  }

//  Function epo() {
//    Duration time = Duration(seconds: 1);
//    Future.delayed(time, () {
//      funcCalc(widget.email, widget.pass);
//    });
//  }
//
//  funcCalc(dynamic email, dynamic pass) async {
//    dynamic data = await _auth.login(email, pass);
//    if (data == null) {
//      type = 1;
//      Navigator.pop(context);
//    } else {
//      Navigator.pop(context);
//    }
//  }

  @override
  void dispose() {
    // TODO: implement dispose
    //control.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    context.dependOnInheritedWidgetOfExactType(aspect: control);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Stack(
            children: <Widget>[
              Center(
                child: Text(
                  'Fivo',
                  style: TextStyle(
                      fontSize: 80, letterSpacing: 18, color: kappbarcolor),
                ),
              ),
              Dot(
                dotColor: kappbarcolor,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 58, 64),
                child: Stack(
                  children: <Widget>[
                    smallDot(radius, 1),
                    smallDot(radius, 2),
                    smallDot(radius, 3),
                    smallDot(radius, 4),
                    smallDot(radius, 5),
                    smallDot(radius, 6),
                    smallDot(radius, 7),
                    smallDot(radius, 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final Color dotColor;
  Dot({this.dotColor});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 58, 62),
        width: 18,
        height: 20,
        decoration: BoxDecoration(shape: BoxShape.circle, color: this.dotColor),
      ),
    );
  }
}

class smallDot extends StatefulWidget {
  final double loc;
  final double rad;
  smallDot(this.rad, this.loc);

  @override
  _smallDotState createState() => _smallDotState();
}

class _smallDotState extends State<smallDot> {
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: control,
      child: Transform.translate(
        offset: Offset(radius * cos(widget.loc * pi / 4),
            radius * sin(widget.loc * pi / 4)),
        child: Center(
          child: Container(
            width: 4,
            height: 4,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kappbarcolor),
          ),
        ),
      ),
    );
  }
}
