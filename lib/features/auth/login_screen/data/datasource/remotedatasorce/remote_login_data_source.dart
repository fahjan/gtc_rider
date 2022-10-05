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
    Response? response;
    try {
      Dio dio = _remoteConnections.remoteConnected;
      response = await dio.post(
        'login',
        data: {
          'email': email,
          'password': password,
          'onesignal_id': onesignal_id,
        },
      );

      return LoginBaseModel.fromJson(response.data);
    } on Exception catch (e){
      return LoginBaseModel.withError(e.toString());
    }
  }
}
