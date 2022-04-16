import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_2_navigation/first_route.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';
import 'package:flutter_roadmap/day_2_navigation/third_route.dart';
import 'package:flutter_roadmap/day_3_profile_ui/profile_home.dart';
import 'package:flutter_roadmap/day_4_listview/general_listview_builder.dart';
import 'package:flutter_roadmap/day_4_listview/gridview_type.dart';
import 'package:flutter_roadmap/day_4_listview/list_view_types.dart';
import 'package:flutter_roadmap/day_5_networking/ui/user_detail.dart';
import 'package:flutter_roadmap/main.dart';

Map<String, WidgetBuilder> initRoutes() {
  return {
    MyHomePage.id: (BuildContext ctx) =>
        MyHomePage(title: MyHomePage.headerTitle),
    FirstRoute.id: (BuildContext ctx) => const FirstRoute(),
    SecondRoute.id: (BuildContext ctx) => const SecondRoute(),
    ThirdRoute.id: (BuildContext ctx) => const ThirdRoute(),
    ProfileHome.id: (BuildContext ctx) => const ProfileHome(),
    ListViewTypes.id: (BuildContext ctx) => ListViewTypes(),
    GeneralListviewBuilder.id: (BuildContext ctx) =>
        const GeneralListviewBuilder(),
    GridviewType.id: (BuildContext ctx) => GridviewType(),
    UserDetail.id: (BuildContext ctx) => const UserDetail(),
  };
}
