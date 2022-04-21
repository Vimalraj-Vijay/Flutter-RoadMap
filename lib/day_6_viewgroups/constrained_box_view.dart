import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';

import '../utils/strings.dart';

class ConstrainedBoxView extends StatelessWidget {
  static const id = "/constrainedBoxView";

  const ConstrainedBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.constrainedBox, context),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
            maxHeight: 100,
          ),
          child: Container(
            decoration: const BoxDecoration(color: Colors.green),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(
                  "ConstrainedBox is a built-in widget in flutter SDK. Its function is to add size constraints to its child widgets. It comes quite handy if we want a container or image to not exceed a certain height and width. It is also good to keep text in a wrapped layout by making the Text widget a child on ConstrainedBox. This functionality can also be found in SizedBox widget or else.",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
