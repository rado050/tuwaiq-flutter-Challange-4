// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_api_2/Components/Button.dart';
import 'package:flutter_api_2/Components/TextField.dart';
import 'package:flutter_api_2/Controller/UserController.dart';
import 'package:get/get.dart';

class QuotesScreen extends StatelessWidget {
  QuotesScreen({super.key});

  UserController userController = Get.put(UserController());
  TextEditingController quotesIndex = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: Text(
                  'Api took : ${userController.methodTime.value} Milliseconds',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: quotesIndex,
            title: 'Quote Index (Empty for all)',
          ),
          CustomButton(
            press: () async {
              int? index = int.tryParse(quotesIndex.text);
              if (index != null) {
                await userController.FetchUsers(quoteIndex: index);
              } else {
                await userController.FetchUsers();
              }
            },
            title: 'Search',
          ),
          SizedBox(
            height: 20,
          ),
          GetBuilder<UserController>(
            builder: (con) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(userController.QuotesData.toString()),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
