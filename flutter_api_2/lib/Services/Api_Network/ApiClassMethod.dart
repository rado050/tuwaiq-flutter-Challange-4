// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'package:flutter_api_2/Const/URLApi.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class ClassApi {
  static MethodGet({required String endPoint}) async {
    try {
      var url = Uri.https(apiURL, endPoint);
      var response = await http.get(url);
      var jsonData = json.decode(response.body);
      if (response.statusCode == 200) {
        return jsonData;
      } else {
        return "No User";
      }
    } catch (error) {
      Get.snackbar(
        "Error",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
  }
}
