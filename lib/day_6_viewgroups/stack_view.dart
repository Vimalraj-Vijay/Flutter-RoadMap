import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';

import '../utils/strings.dart';

class StackView extends StatelessWidget {
  static const id = "/stackView";

  const StackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.stack, context),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/banner_image.jpg"),
          Text(
            "Big Hero 6",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
