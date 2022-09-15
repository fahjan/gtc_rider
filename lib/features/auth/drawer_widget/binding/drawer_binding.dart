import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:gtc_rider/features/auth/drawer_widget/controllers/drawers_controller.dart';

class DrawersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrawersController());
  }
}