import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/buttons.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';

import '../utils/strings.dart';

class StateChange extends StatefulWidget {
  static const id = "/stateChange";

  const StateChange({Key? key}) : super(key: key);

  @override
  State<StateChange> createState() => _StateChangeState();
}

class _StateChangeState extends State<StateChange> {
  late Color updatedColor;

  @override
  void initState() {
    updatedColor = Colors.black;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day8StateChanges, context),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(color: updatedColor),
            ),
            getElevatedButton(Strings.changeColor, () => {updateColors()}, true,
                Colors.amberAccent)
          ],
        ),
      ),
    );
  }

  void updateColors() {
    setState(() {
      updatedColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
    });
  }
}
