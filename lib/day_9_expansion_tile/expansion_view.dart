import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:flutter_roadmap/utils/strings.dart';

class ExpansionView extends StatefulWidget {
  static const id = "/expansionView";
  const ExpansionView({Key? key}) : super(key: key);

  @override
  State<ExpansionView> createState() => _ExpansionViewState();
}

class _ExpansionViewState extends State<ExpansionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day9ExpansionTile, context),
      body: ExpansionTile(
        title: Text(
          Strings.question,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18),
        ),
        children: [
          Container(
            width: double.infinity,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Strings.answer,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
