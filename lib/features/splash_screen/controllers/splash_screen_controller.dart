import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

class SplashScreenController extends GetxController {
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

@override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), (() {
      Get.offAndToNamed(AppRoutes.loginPage);
    }));
  }
}
