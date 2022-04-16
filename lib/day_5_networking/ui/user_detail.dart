import 'package:flutter/material.dart';
import 'package:flutter_roadmap/day_5_networking/api_service.dart';
import 'package:flutter_roadmap/day_5_networking/model/user_model.dart';
import 'package:flutter_roadmap/utils/common_appbar.dart';
import 'package:flutter_roadmap/utils/strings.dart';

class UserDetail extends StatefulWidget {
  static const id = "/user_details";

  UserDetail({Key? key}) : super(key: key);

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  late List<UserModel> _userModel = [];

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  void _getUserData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(Strings.day5Networking, context),
      body: _userModel.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: _getUserDetailsItem,
              itemCount: _userModel.length,
            ),
    );
  }

  Widget _getUserDetailsItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assests/images/profile.jpg"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _userModel[index].username,
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(_userModel[index].name),
                      Text(_userModel[index].email),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child:
                        getSpannedText("Phone:", _userModel[index].phone ?? ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: getSpannedText(
                        "Website:", _userModel[index].website ?? ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: getSpannedText("Address:", userAddress(index)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: getSpannedText(
                        "Company:", _userModel[index].company?.name ?? ""),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String userAddress(int index) {
    return "${_userModel[index].address?.street ?? ""},${_userModel[index].address?.suite ?? ""},${_userModel[index].address?.city ?? ""},${_userModel[index].address?.zipcode ?? ""}.";
  }

  Widget getSpannedText(String title, String value) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 14),
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: const TextStyle(
                color: Colors.purple, fontWeight: FontWeight.w800),
          ),
          TextSpan(text: " "),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
