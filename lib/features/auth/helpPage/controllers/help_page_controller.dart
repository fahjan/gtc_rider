import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPageController extends GetxController{
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }
}