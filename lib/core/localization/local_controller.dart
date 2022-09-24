import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';

class MyLocaleController extends GetxController {
  void changeLanguage(String codelanguage) {
    Locale locale = Locale(codelanguage);
    Get.updateLocale(locale);
  }

  Future<String> getRiderInfo() async {
    String riderInfo = await GetStorage().read('login_rider_info');
    debugPrint('mohammed :$riderInfo');
    return riderInfo;
  }
}
