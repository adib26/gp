import 'package:SemiCollege/authintication/sign-in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:SemiCollege/Constraint.dart';
import 'package:SemiCollege/services/auth.dart';

class Dialog_loading {
  BuildContext bc;
  Dialog_loading({this.bc});

  Widget start() {
    print(bc);
    return _openLoadingDialog(bc);
  }

  Widget _openLoadingDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      child: new AlertDialog(
        backgroundColor: Colors.white,
        insetPadding: EdgeInsets.symmetric(vertical: 250, horizontal: 100),
        content: SpinKitWave(
          color: kappbarcolor,
          type: SpinKitWaveType.start,
          size: 50,
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
