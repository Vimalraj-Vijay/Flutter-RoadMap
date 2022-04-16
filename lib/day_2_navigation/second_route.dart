import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/third_route.dart';

class SecondRoute extends StatelessWidget {
  static var id = "/secondRoute";
  static var headerTitle = "Navigation Second Page";
  final thirdRouteValue = "Hi Iam the Third route with passed args from second";

  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headerTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Hi I am the second page",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ThirdRoute.id,
                    arguments: ThirdPageArguments(thirdRouteValue));
              },
              child: const Text(
                "Pass the args to Third page",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPageArguments {
  final String message;

  ThirdPageArguments(this.message);
}
