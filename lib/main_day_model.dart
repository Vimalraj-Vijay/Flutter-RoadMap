import 'package:flutter/material.dart';

class MainDayModel {
  late String taskName;
  late String routeId;
  late bool textColorDark;
  late MaterialColor backgroundColor;

  MainDayModel(
      this.taskName, this.routeId, this.textColorDark, this.backgroundColor);
}
