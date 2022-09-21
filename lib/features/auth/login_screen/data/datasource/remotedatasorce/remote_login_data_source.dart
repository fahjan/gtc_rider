import 'package:dio/dio.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/remote_connections.dart';
import 'package:gtc_rider/core/exceptions/exceptions.dart';
import 'package:gtc_rider/features/auth/login_screen/data/model/login_base_model.dart';

class RemoteLoginDataSource {
  final RemoteConnections<Dio> _remoteConnections;

  RemoteLoginDataSource(this._remoteConnections);

  Future<LoginBaseModel> loginRider(
    String email,
    String password,
    String onesignal_id,
  ) async {
    Dio dio = _remoteConnections.remoteConnected;
    Response response = await dio.post(
      'login',
      data: {
        'email': email,
        'password': password,
        'onesignal_id': onesignal_id,
      },
    );

    if (response.statusCode != 200) {
      throw ServiceNotFoundException();
    }

    return LoginBaseModel.fromJson(response.data);
  }
}
