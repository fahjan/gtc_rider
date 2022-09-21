import 'package:get/get.dart';
import 'package:gtc_rider/features/auth/helpPage/controllers/help_page_controller.dart';

class HelpPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpPageController());
  }
}