import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_6_viewgroups/constrained_box_view.dart';
import 'package:flutter_roadmap/day_6_viewgroups/model/view_group_model.dart';
import 'package:flutter_roadmap/day_6_viewgroups/stack_view.dart';
import 'package:flutter_roadmap/utils/strings.dart';

import '../utils/common_appbar.dart';

//ignore: must_be_immutable
class ViewGroupList extends StatelessWidget {
  List<ViewGroupModel> viewGroupModelList = [];
  static const id = "/viewGroupList";

  ViewGroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day6ViewGroups, context),
      body: ListView.builder(
        itemBuilder: _getListViewTypes,
        itemCount: generateList().length,
      ),
    );
  }

  List<ViewGroupModel> generateList() {
    viewGroupModelList.add(ViewGroupModel(Strings.stack, StackView.id));
    viewGroupModelList
        .add(ViewGroupModel(Strings.constrainedBox, ConstrainedBoxView.id));
    return viewGroupModelList;
  }

  Widget _getListViewTypes(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, generateList()[index].viewGroupId);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(generateList()[index].viewGroupName),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            onPrimary: Colors.white,
          ),
        ),
      ),
    );
  }
}
