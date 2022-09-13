import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }
}
