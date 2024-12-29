import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  changeLocale(String langeCode, String countryCode) {
    var locale = Locale(langeCode, countryCode);

    Get.updateLocale(locale);
  }

  ////
}
