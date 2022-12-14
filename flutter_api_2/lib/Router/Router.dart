// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter_api_2/src/QuotesScreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: Routes.quotes(), page: () => QuotesScreen())
];

class Routes {
  static home() => "/Home";
  static quotes() => "/posts";
}
