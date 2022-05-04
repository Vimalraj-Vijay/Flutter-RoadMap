import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_1/inherited_widget_day1.dart';
import 'package:flutter_roadmap/day_2_navigation/first_route.dart';
import 'package:flutter_roadmap/day_3_profile_ui/profile_home.dart';
import 'package:flutter_roadmap/day_4_listview/list_view_types.dart';
import 'package:flutter_roadmap/day_5_networking/ui/user_detail.dart';
import 'package:flutter_roadmap/day_9_expansion_tile/expansion_view.dart';
import 'package:flutter_roadmap/main_day_model.dart';
import 'package:flutter_roadmap/utils/globalcontext.dart';
import 'package:flutter_roadmap/utils/buttons.dart';
import 'package:flutter_roadmap/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'day_10_platform_based_alert_dialogs/show_dialog.dart';
import 'day_6_viewgroups/view_group_list.dart';
import 'day_7_shared_pref/saved_shared_pref.dart';
import 'day_8_statechanges/state_change.dart';
import 'utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GlobalContext.setContext(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.archivoNarrowTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.amber,
      ),
      initialRoute: MyHomePage.id,
      routes: initRoutes(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static var id = "/home";
  static var headerTitle = "Flutter Demo Home Page";

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<MainDayModel> _mainDayModel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: _getDayBasedTaskList,
        itemCount: getTaskBasedOnDayLists().length,
      ),
    );
  }

  Widget _getDayBasedTaskList(BuildContext context, int index) {
    return getElevatedButton(
        _mainDayModel[index].taskName,
        () => {
              _navigateToNextScreenUsingNamed(
                  context, _mainDayModel[index].routeId)
            },
        _mainDayModel[index].textColorDark,
        _mainDayModel[index].backgroundColor);
  }

  void _navigateToNextScreenUsingNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  List<MainDayModel> getTaskBasedOnDayLists() {
    _mainDayModel.add(MainDayModel(Strings.day1InheritedWidget,
        InheritedWidgetDay1.id, false, Colors.green));
    _mainDayModel.add(MainDayModel(
        Strings.day2Navigation, FirstRoute.id, true, Colors.yellow));
    _mainDayModel.add(
        MainDayModel(Strings.day3Profile, ProfileHome.id, false, Colors.green));
    _mainDayModel.add(MainDayModel(
        Strings.day4Listviews, ListViewTypes.id, true, Colors.yellow));
    _mainDayModel.add(MainDayModel(
        Strings.day5Networking, UserDetail.id, false, Colors.green));
    _mainDayModel.add(MainDayModel(
        Strings.day6ViewGroups, ViewGroupList.id, true, Colors.yellow));
    _mainDayModel.add(MainDayModel(
        Strings.day7SharedPref, SavedSharedPref.id, false, Colors.green));
    _mainDayModel.add(MainDayModel(
        Strings.day8StateChanges, StateChange.id, true, Colors.yellow));
    _mainDayModel.add(MainDayModel(
        Strings.day9ExpansionTile, ExpansionView.id, false, Colors.green));
    _mainDayModel.add(MainDayModel(Strings.day10platformBasedAlertDialog,
        ShowDialog.id, true, Colors.yellow));
    return _mainDayModel;
  }
}
