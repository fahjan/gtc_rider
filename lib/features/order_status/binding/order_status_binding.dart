import 'package:get/get.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/remote_dio_connection.dart';
import 'package:gtc_rider/features/order_status/controllers/order_status_controller.dart';
import 'package:gtc_rider/features/order_status/data/datasourse/remotedatasourse/remote_order_status.dart';
import 'package:gtc_rider/features/order_status/data/repositories/order_status_repo_data.dart';
import 'package:gtc_rider/features/order_status/domain/usecases/order_status_usecases.dart';

class OrderStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoteDioConnection(), fenix: true);
    Get.lazyPut(() => RemoteOrderStatus(Get.find<RemoteDioConnection>()),
        fenix: true);
    Get.lazyPut(() => OrderStatusRepoData(Get.find<RemoteOrderStatus>()),
        fenix: true);
    Get.lazyPut(() => OrderStatusUseCase(Get.find<OrderStatusRepoData>()),
        fenix: true);
    Get.lazyPut(() => OrderStatusController(Get.find<OrderStatusUseCase>()),
        fenix: true);
  }
}
