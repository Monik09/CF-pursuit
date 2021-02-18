import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserData {
  Future<dynamic> getUserData() async {
    var result = await http
        .get("https://codeforces.com/api/user.info?handles=valiant_vidit");
    if (result.statusCode == 200) {
      print(result.toString());
      return result.body;
    } else {
      return Error();
    }
  }
}
