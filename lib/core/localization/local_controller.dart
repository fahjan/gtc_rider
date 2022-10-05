import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class MyLocaleController extends GetxController {
  void changeLanguage(String codelanguage) {
    Locale locale = Locale(codelanguage);
    Get.updateLocale(locale);
  }
}
