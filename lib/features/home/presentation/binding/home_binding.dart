import 'package:get/instance_manager.dart';
import 'package:gtc_rider/core/localization/local_controller.dart';
import 'package:gtc_rider/features/home/presentation/controllers/home_controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MyLocaleController());
  }
}
