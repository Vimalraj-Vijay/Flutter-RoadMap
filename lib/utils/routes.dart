import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/first_route.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';
import 'package:flutter_roadmap/day_2_navigation/third_route.dart';
import 'package:flutter_roadmap/day_3_profile_ui/ProfileHome.dart';
import 'package:flutter_roadmap/main.dart';

Map<String, WidgetBuilder> initRoutes() {
  return {
    MyHomePage.id: (BuildContext ctx) => MyHomePage(title: MyHomePage.HeaderTitle),
    FirstRoute.id: (BuildContext ctx) => FirstRoute(),
    SecondRoute.id: (BuildContext ctx) => SecondRoute(),
    ThirdRoute.id: (BuildContext ctx) => ThirdRoute(),
    ProfileHome.id: (BuildContext ctx) => ProfileHome(),
  };
}
