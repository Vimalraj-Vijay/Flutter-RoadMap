import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_1/inherited_widget_day1.dart';
import 'package:flutter_roadmap/day_2_navigation/first_route.dart';
import 'package:flutter_roadmap/day_2_navigation/second_route.dart';
import 'package:flutter_roadmap/day_2_navigation/third_route.dart';
import 'package:flutter_roadmap/day_3_profile_ui/profile_home.dart';
import 'package:flutter_roadmap/day_4_listview/general_listview_builder.dart';
import 'package:flutter_roadmap/day_4_listview/gridview_type.dart';
import 'package:flutter_roadmap/day_4_listview/list_view_types.dart';
import 'package:flutter_roadmap/day_5_networking/ui/user_detail.dart';
import 'package:flutter_roadmap/day_6_viewgroups/stack_view.dart';
import 'package:flutter_roadmap/day_9_expansion_tile/expansion_view.dart';
import 'package:flutter_roadmap/main.dart';

import '../day_10_platform_based_alert_dialogs/show_dialog.dart';
import '../day_11_platform_based_ui/all_platform_based_widgets.dart';
import '../day_6_viewgroups/constrained_box_view.dart';
import '../day_6_viewgroups/view_group_list.dart';
import '../day_7_shared_pref/saved_shared_pref.dart';
import '../day_8_statechanges/state_change.dart';

Map<String, WidgetBuilder> initRoutes() {
  return {
    MyHomePage.id: (BuildContext ctx) =>
        MyHomePage(title: MyHomePage.headerTitle),
    InheritedWidgetDay1.id: (BuildContext ctx) => const InheritedWidgetDay1(),
    FirstRoute.id: (BuildContext ctx) => const FirstRoute(),
    SecondRoute.id: (BuildContext ctx) => const SecondRoute(),
    ThirdRoute.id: (BuildContext ctx) => const ThirdRoute(),
    ProfileHome.id: (BuildContext ctx) => const ProfileHome(),
    ListViewTypes.id: (BuildContext ctx) => ListViewTypes(),
    GeneralListviewBuilder.id: (BuildContext ctx) =>
        const GeneralListviewBuilder(),
    GridviewType.id: (BuildContext ctx) => GridviewType(),
    UserDetail.id: (BuildContext ctx) => const UserDetail(),
    ViewGroupList.id: (BuildContext ctx) => ViewGroupList(),
    StackView.id: (BuildContext ctx) => const StackView(),
    ConstrainedBoxView.id: (BuildContext ctx) => const ConstrainedBoxView(),
    SavedSharedPref.id: (BuildContext ctx) => const SavedSharedPref(),
    StateChange.id: (BuildContext ctx) => const StateChange(),
    ExpansionView.id: (BuildContext ctx) => const ExpansionView(),
    ShowDialog.id: (BuildContext ctx) => const ShowDialog(),
    AlPlatformBasedWidget.id: (BuildContext ctx) =>
        const AlPlatformBasedWidget(),
  };
}
