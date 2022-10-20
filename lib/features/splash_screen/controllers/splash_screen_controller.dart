import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:gtc_rider/core/local_storage.dart';
import 'package:gtc_rider/features/auth/login_screen/data/datasource/localdatasource/local_login_data_source.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

class SplashScreenController extends GetxController {
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  @override
  void onReady() {
    getApiToken().then((value) {
      if (value != null) {
        Get.offAndToNamed(AppRoutes.home);
      } else {
        Get.offAndToNamed(AppRoutes.loginPage);
      }
    });
    super.onReady();
  }

  Future<String?> getApiToken() async {
    LoginBaseEntity? loginBaseEntity = await LocaleLoginDataSource()
        .readFromLocalStorageLoginRiderInfo(Constants.loginRiderInfoKey);
    return loginBaseEntity?.dataa?.api_token;
  }
}
