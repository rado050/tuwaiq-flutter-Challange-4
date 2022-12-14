// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter_api_2/Model/QuotesModel.dart';
import 'package:flutter_api_2/Services/Api_Network/ApiClassMethod.dart';
import 'package:flutter_api_2/Services/Api_Network/EndPoints.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  List<Quotes> QuotesData = [];

  RxInt methodTime = 0.obs;
  Stopwatch time = Stopwatch();

  FetchUsers({int? quoteIndex}) async {
    QuotesData.clear();
    time.reset();
    time.start();

    if (quoteIndex == null) {
      var result = await ClassApi.MethodGet(
        endPoint: EndPoint.quotes(quotesIndex: quoteIndex),
      );
      result['quotes'].forEach((element) {
        QuotesData.add(Quotes.fromJson(element));
      });
    } else {
      var result = await ClassApi.MethodGet(
          endPoint: EndPoint.quotes(quotesIndex: quoteIndex));
      QuotesData.add(Quotes.fromJson(result));
    }
    time.stop;
    methodTime.value = time.elapsedMilliseconds;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    FetchUsers();
  }
}
