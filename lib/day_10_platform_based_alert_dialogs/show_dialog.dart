import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:flutter_roadmap/utils/strings.dart';

import '../utils/buttons.dart';
import '../utils/common_alert_dialog.dart';

class ShowDialog extends StatelessWidget {
  static const id = "/showDialog";

  const ShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(Strings.day10platformBasedAlertDialog, context),
        body: getElevatedButton("Show Default Dialog",
            () => {showDialog(context)}, true, Colors.amber));
  }

  void showDialog(BuildContext context) {
    getPlatFormBasedAlertDialog(
      context,
      () => noAction(context),
      () => yesAction(context),
    );
  }

  void yesAction(BuildContext context) {
    Navigator.of(context).pop(true);
  }

  void noAction(BuildContext context) {
    Navigator.of(context).pop(false);
  }
}
