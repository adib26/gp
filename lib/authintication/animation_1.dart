import 'dart:math';

import 'package:flutter/material.dart';

import '../Constraint.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> with SingleTickerProviderStateMixin {
  static double radius = 6.0;
  double intRadius = 10;
  Animation animationRotation;
  Animation animationRadiusIn;
  Animation animationRadiusOut;
  static AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    animationRotation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 1.0, curve: Curves.linear)));

    animationRadiusIn = Tween<double>(begin: 1.0, end: 0.3).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.75, 1.0, curve: Curves.elasticIn)));
    animationRadiusOut = Tween<double>(begin: 0.3, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.elasticOut)));

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = animationRadiusIn.value * intRadius;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animationRadiusOut.value * intRadius;
        }
      });
    });

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Text(
        kappname,
        style: TextStyle(color: kappbarcolor, fontSize: 48, letterSpacing: 6),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(155, 0, 0, 30),
        child: Stack(children: <Widget>[
          SmallDot(radius, 1),
          //smallDot(radius, 2),
          SmallDot(radius, 3),
          SmallDot(radius, 4),
          SmallDot(radius, 5),
          SmallDot(radius, 6),
          SmallDot(radius, 7),
          SmallDot(radius, 8),
        ]),
      ),
    ]);
  }
}

class SmallDot extends StatefulWidget {
  final double loc;
  final double rad;
  SmallDot(this.rad, this.loc);

  @override
  _SmallDotState createState() => _SmallDotState();
}

class _SmallDotState extends State<SmallDot> {
  @override
  Widget build(BuildContext context) {
    return //RotationTransition(
        //turns: _loginState.controller,
        // child:
        Transform.translate(
      offset: Offset(_LoadState.radius * cos(widget.loc * pi / 4),
          _LoadState.radius * sin(widget.loc * pi / 4)),
      child: Center(
        child: Container(
          width: 4,
          height: 4,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kappbarcolor),
        ),
      ),
    );
    //   );
  }
}
