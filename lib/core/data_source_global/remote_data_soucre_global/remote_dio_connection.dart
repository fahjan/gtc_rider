import 'package:dio/dio.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/app_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'remote_connections.dart';

class RemoteDioConnection extends RemoteConnections<Dio> {
  late final Dio _dio;

  static RemoteDioConnection? _instance;

  RemoteDioConnection._() {
    _dio = Dio(
      BaseOptions(baseUrl: Constants.baseUrl, headers: {
        'Authorization':
            'Bearer jtH55kuUMUSJrK-IBMo3Vw17832',
        'Accept': 'application/json',
      }),
    );
    _dio.interceptors.addAll({
      AppInterceptors(_dio),
    });
    _dio.interceptors.add(PrettyDioLogger());
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: false,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  factory RemoteDioConnection() {
    return _instance ??= RemoteDioConnection._();
  }

  @override
  Dio get remoteConnected => _dio;
}
