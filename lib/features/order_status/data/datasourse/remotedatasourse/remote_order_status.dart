import 'package:dio/dio.dart';
import 'package:gtc_rider/core/data_source_global/remote_data_soucre_global/remote_connections.dart';
import 'package:gtc_rider/features/order_status/data/model/order_status_response.dart';

class RemoteOrderStatus{
  final RemoteConnections<Dio> _remoteConnections;

  RemoteOrderStatus(this._remoteConnections);

  Future<OrderStatusResponse> changeOrderStatus(
     String status,
     String latitude,
     String longitude
  ) async {
    Response? response;
    try {
      Dio dio = _remoteConnections.remoteConnected;
      response = await dio.put(
        'tasks/787',
        data: {
          'status':status,
          'latitude':latitude,
          'longitude':longitude
        },
      );

      return OrderStatusResponse.fromJson(response.data);
    } on Exception catch (e){
      return OrderStatusResponse(e.toString());
    }
  }
}