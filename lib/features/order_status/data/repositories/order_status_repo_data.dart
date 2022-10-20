import 'package:gtc_rider/features/order_status/data/datasourse/remotedatasourse/remote_order_status.dart';
import 'package:gtc_rider/features/order_status/data/model/order_status_response.dart';
import 'package:gtc_rider/features/order_status/domain/entity/order_status_response_entity.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:gtc_rider/features/order_status/domain/mapper/order_status_mapper.dart';
import 'package:gtc_rider/features/order_status/domain/repositories/order_status_repo_domin.dart';

class OrderStatusRepoData extends OrderStatusRepoDomain {
  RemoteOrderStatus remoteOrderStatus;
  OrderStatusRepoData(this.remoteOrderStatus);
  @override
  Future<Either<Failure, OrderStatusResponseEntity>> changeOrderStatus(
      String status, String latitude, String longitude) async {
    try {
      OrderStatusResponse orderStatusResponse = await remoteOrderStatus
          .changeOrderStatus(status, latitude, longitude);

      return Right(orderStatusResponse.toEntity());
    } catch (e) {
      return left(ServiceNotFoundFailure());
    }

  }
}
