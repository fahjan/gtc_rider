import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:gtc_rider/features/auth/order_details%20_screen/controllers/order_details_controllers.dart';

class OrderDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsController());
  }
}