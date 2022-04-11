import 'package:flutter/material.dart';

class Info extends InheritedWidget {
  final int score;

  const Info({required this.score, required Widget child, Key? key})
      : super(child: child, key: key);

  static Info of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>()!;
  }

  @override
  bool updateShouldNotify(covariant Info oldWidget) {
    return score != oldWidget.score;
  }
}
