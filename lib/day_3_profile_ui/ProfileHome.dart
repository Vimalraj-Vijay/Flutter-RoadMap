import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_3_profile_ui/EditableViews.dart';
import 'package:flutter_roadmap/utils/strings.dart';

class ProfileHome extends StatelessWidget {
  static const id = "/profile";

  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(Strings.profile),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + MediaQuery.of(context).viewInsets.bottom/3,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assests/user_profile.jpeg"),
                radius: 100,
              ),
              EditableViews(
                title: Strings.titleName,
                value: Strings.hintValueName,
              ),
              EditableViews(
                title: Strings.titlePhone,
                value: Strings.hintValuePhone,
              ),
              EditableViews(
                title: Strings.titleEmail,
                value: Strings.hintValueEmail,
              ),
              EditableViews(
                title: Strings.titleDesc,
                value: Strings.hintValueDesc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
