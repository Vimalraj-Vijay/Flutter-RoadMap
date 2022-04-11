import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';

class FirstRoute extends StatelessWidget {
  static var id = "/firstroute";
  static var headerTitle = "Navigation First page";
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headerTitle),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              // Navigate Using Named Routes
              Navigator.pushNamed(context, SecondRoute.id);
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondRoute(),
                ),
              );*/
            },
            child: Text(
              "Hi I am the first page",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
