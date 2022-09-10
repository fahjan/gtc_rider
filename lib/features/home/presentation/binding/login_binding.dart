import 'package:get/instance_manager.dart';
import 'package:gtc_rider/features/home/presentation/controllers/login_controllers.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
