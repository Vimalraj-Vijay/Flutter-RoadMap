import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_roadmap/utils/strings.dart';

Future getPlatFormBasedAlertDialog(BuildContext context,
    VoidCallback onNoPressed, VoidCallback onYesPressed) async {
  if (Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(Strings.alertTitle),
              content: const Text(Strings.androidAlertDesc),
              actions: <Widget>[
                TextButton(
                  onPressed: onYesPressed,
                  child: const Text(Strings.yes),
                ),
                TextButton(
                  onPressed: onNoPressed,
                  child: const Text(Strings.no),
                )
              ],
            ));
  } else {
    return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text(Strings.alertTitle),
              content: const Text(Strings.iosAlertDesc),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: onYesPressed,
                  child: const Text(Strings.yes),
                ),
                CupertinoDialogAction(
                  onPressed: onNoPressed,
                  child: const Text(Strings.no),
                )
              ],
            ));
  }
}
