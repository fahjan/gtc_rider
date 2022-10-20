import 'package:get/instance_manager.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/remote_dio_connection.dart';
import 'package:gtc_rider/features/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoteDioConnection(), fenix: true);
    Get.put(SplashScreenController());
  }
}
