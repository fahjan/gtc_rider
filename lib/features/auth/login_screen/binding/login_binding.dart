import 'package:get/instance_manager.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/remote_dio_connection.dart';
import 'package:gtc_rider/features/auth/login_screen/controllers/login_controllers.dart';
import 'package:gtc_rider/features/auth/login_screen/data/datasource/remotedatasorce/remote_login_data_source.dart';
import 'package:gtc_rider/features/auth/login_screen/data/repositories/login_repo_data.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/usecases/login_usecase.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoteDioConnection());
    Get.lazyPut(() => RemoteLoginDataSource(Get.find<RemoteDioConnection>()));
    Get.lazyPut(() => LoginRepoData(Get.find<RemoteLoginDataSource>()));
    Get.lazyPut(() => LoginUseCase(Get.find<LoginRepoData>()));
    Get.lazyPut(() => LoginController(Get.find<LoginUseCase>()));
  }
}
