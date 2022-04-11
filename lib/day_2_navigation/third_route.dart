import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';

class ThirdRoute extends StatelessWidget {
  static var id = "/thirdroute";
  static var headerTitle = "Navigation Args passed";

  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ThirdPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(headerTitle),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(args.message,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
