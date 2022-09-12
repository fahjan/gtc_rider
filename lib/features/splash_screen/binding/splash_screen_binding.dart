import 'package:get/instance_manager.dart';
import 'package:gtc_rider/features/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
