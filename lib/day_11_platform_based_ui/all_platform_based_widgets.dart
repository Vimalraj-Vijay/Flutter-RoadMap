import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:flutter_roadmap/utils/strings.dart';

class AlPlatformBasedWidget extends StatelessWidget {
  static const id = "/alPlatformBasedWidget";
  const AlPlatformBasedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day11PlatformUI, context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            PlatformText("Platform based text"),
            PlatformSwitch(
              onChanged: (bool value) {},
              value: true,
            )
          ],
        ),
      ),
    );
  }
}
