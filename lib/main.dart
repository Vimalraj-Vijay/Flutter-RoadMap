import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_1/inherited_widget_day1.dart';
import 'package:flutter_roadmap/day_2_navigation/first_route.dart';
import 'package:flutter_roadmap/day_3_profile_ui/ProfileHome.dart';
import 'package:flutter_roadmap/day_4_listview/general_listview_builder.dart';
import 'package:flutter_roadmap/day_4_listview/listview_types.dart';
import 'package:flutter_roadmap/day_5_networking/ui/user_detail.dart';
import 'package:flutter_roadmap/utils/GlobalContext.dart';
import 'package:flutter_roadmap/utils/buttons.dart';
import 'package:flutter_roadmap/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.archivoNarrowTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.amber,
      ),
      initialRoute: MyHomePage.id,
      routes: initRoutes(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static var id = "/home";
  static var HeaderTitle = "Flutter Demo Home Page";

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Buttons.getElevatedButton(Strings.day1InheritedWidget, () {
            _navigateToNextScreen(context, InheritedWidgetDay1());
          }),
          Buttons.getElevatedButton(Strings.day2Navigation, () {
            _navigateToNextScreen(context, FirstRoute());
          }),
          Buttons.getElevatedButton(Strings.day3Profile, () {
            _navigateToNextScreenUsingNamed(context, ProfileHome.id);
          }),
          Buttons.getElevatedButton(Strings.day4Listviews, () {
            _navigateToNextScreenUsingNamed(context, ListViewTypes.id);
          }),
          Buttons.getElevatedButton(Strings.day5Networking, () {
            _navigateToNextScreenUsingNamed(context, UserDetail.id);
          }),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _navigateToNextScreen(BuildContext context, dynamic route) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
  }

  void _navigateToNextScreenUsingNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
