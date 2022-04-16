import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';

class ThirdRoute extends StatelessWidget {
  static var id = "/thirdRoute";
  static var headerTitle = "Navigation Args passed";

  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ThirdPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(headerTitle),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            args.message,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
