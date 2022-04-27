import 'package:flutter/material.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:flutter_roadmap/utils/strings.dart';

import '../utils/buttons.dart';
import '../utils/common_text_field.dart';
import '../utils/preference_utils.dart';

//ignore: must_be_immutable
class SavedSharedPref extends StatefulWidget {
  static const id = "/savedSharedPref";

  const SavedSharedPref({Key? key}) : super(key: key);

  @override
  State<SavedSharedPref> createState() => _SavedSharedPrefState();
}

class _SavedSharedPrefState extends State<SavedSharedPref> {
  late TextEditingController nameTextController;
  late TextEditingController passwordTextController;

  @override
  void initState() {
    PreferenceUtils.init();
    nameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day7SharedPref, context),
      body: Column(
        children: [
          getTextField(Strings.name, nameTextController),
          getTextField(Strings.password, passwordTextController),
          getElevatedButton(
              Strings.save,
              () =>
                  onSaved(nameTextController.text, passwordTextController.text),
              true,
              Colors.amber)
        ],
      ),
    );
  }

  void onSaved(String name, String password) {
    PreferenceUtils.setString("name", name);
    PreferenceUtils.setString("password", password);

    debugPrint(PreferenceUtils.getString("name"));
    debugPrint(PreferenceUtils.getString("password"));
  }
}
