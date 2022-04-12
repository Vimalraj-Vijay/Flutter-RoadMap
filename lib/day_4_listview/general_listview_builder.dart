import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/strings.dart';

class GeneralListviewBuilder extends StatelessWidget {
  static const id = "/listview_builder";

  const GeneralListviewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.generalListView),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Fluttertoast.showToast(
                  timeInSecForIosWeb: 1,
                  msg: "Selected Item Position ${index + 1}",
                  toastLength: Toast.LENGTH_SHORT,
                );
              },
              leading: const Icon(
                Icons.warning_outlined,
                color: Colors.redAccent,
              ),
              trailing: Text(
                (index + 1).toString(),
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold),
              ),
              title: const Text(
                "General Listview item ---> ",
                style: TextStyle(color: Colors.deepPurple),
              ),
            );
          }),
    );
  }
}
