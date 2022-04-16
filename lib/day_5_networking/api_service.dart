import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:flutter_roadmap/day_5_networking/model/user_model.dart';
import 'package:flutter_roadmap/utils/api_constants.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
