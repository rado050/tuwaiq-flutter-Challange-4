// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_api_2/Router/Router.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialRoute: Routes.quotes(),
    );
  }
}
