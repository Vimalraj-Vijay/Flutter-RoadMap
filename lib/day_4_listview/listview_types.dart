import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_4_listview/general_listview_builder.dart';
import 'package:flutter_roadmap/day_4_listview/gridview_type.dart';
import 'package:flutter_roadmap/day_4_listview/model/ListviewTypesModel.dart';

import '../utils/strings.dart';

class ListViewTypes extends StatelessWidget {
  static const id = "/listviewtypes";
  List<ListViewTypesModel> listviewTypes = [];

  ListViewTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.listViewTypes),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemBuilder: _getListViewTypes,
        itemCount: generateList().length,
      ),
    );
  }

  Widget _getListViewTypes(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        child: ElevatedButton(
          onPressed: () {
            print(generateList()[index].name);
            Navigator.pushNamed(context, generateList()[index].routeid);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(generateList()[index].name),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.amberAccent,
          ),
        ),
      ),
    );
  }

  List<ListViewTypesModel> generateList() {
    listviewTypes.add(ListViewTypesModel(Strings.generalListView, GeneralListviewBuilder.id));
    listviewTypes.add(ListViewTypesModel(Strings.gridview, GridviewType.id));
    return listviewTypes;
  }
}
