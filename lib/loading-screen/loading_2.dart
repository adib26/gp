import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:SemiCollege/Constraint.dart';

class Dialog_loading {
  BuildContext dialogContext;
  BuildContext mainpagecontext;
  Dialog_loading(this.mainpagecontext);

  Widget start() {
    return _openLoadingDialog(mainpagecontext);
  }

  end() async {
    await Navigator.of(mainpagecontext, rootNavigator: true).pop();
  }

  Widget _openLoadingDialog(BuildContext context) {
    BuildContext dialogContext;
    showDialog(
      barrierDismissible: false,
      context: mainpagecontext,
      builder: (BuildContext context) {
        dialogContext = context;
        return Dialog(
          backgroundColor: Colors.white,
          insetPadding: EdgeInsets.symmetric(vertical: 250, horizontal: 100),
          child: SpinKitWave(
            color: kappbarcolor,
            type: SpinKitWaveType.start,
            size: 50,
            duration: Duration(seconds: 1),
          ),
        );
      },
    );
  }
}

class stt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(vertical: 250, horizontal: 100),
      content: SpinKitWave(
        color: kappbarcolor,
        type: SpinKitWaveType.start,
        size: 50,
        duration: Duration(seconds: 1),
      ),
    );
  }
}
