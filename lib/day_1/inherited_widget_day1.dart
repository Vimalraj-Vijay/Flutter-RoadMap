import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/strings.dart';

import 'current_score.dart';
import 'info.dart';

//  InheritedWidget
//  *
//  * InheritedWidget is a base class that allows classes that extend it to propagate information down the tree efficiently. Basically,
//  * it works by notifying registered build contexts if there is any change.
//  * Therefore, the descendant widgets that depend on it will only be rebuilt if necessary.
//  * In addition, the descendant widgets can also get the nearest instance of the inherited widget and access non-private properties
//  *
//  * Reference
//  * https://www.woolha.com/tutorials/flutter-using-inheritedwidget-examples

class InheritedWidgetDay1 extends StatefulWidget {
  const InheritedWidgetDay1({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetDay1> createState() => _InheritedWidgetDay1State();
}

class _InheritedWidgetDay1State extends State<InheritedWidgetDay1> {
  final Random random = Random();
  int _score = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.day1InheritedWidget)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Info(
              score: _score,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.score),
                  CurrentScore(),
                ],
              ),
            ),
            OutlinedButton(
              child: const Text('Change'),
              onPressed: () {
                setState(() {
                  _score = random.nextInt(100);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
