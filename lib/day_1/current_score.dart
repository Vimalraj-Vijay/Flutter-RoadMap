import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_1/info.dart';

class CurrentScore extends StatelessWidget {
  const CurrentScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Info info = Info.of(context);
    return Container(
      child: Text(
        info.score.toString(),
      ),
    );
  }
}
