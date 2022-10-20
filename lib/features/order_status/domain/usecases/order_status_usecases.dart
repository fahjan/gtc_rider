import 'package:dartz/dartz.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/order_status/domain/entity/order_status_response_entity.dart';
import 'package:gtc_rider/features/order_status/domain/repositories/order_status_repo_domin.dart';

class OrderStatusUseCase {
  OrderStatusRepoDomain orderStatusRepoDomain;
  OrderStatusUseCase(this.orderStatusRepoDomain);

  Future<Either<Failure,OrderStatusResponseEntity>> call(String status,String latitude,String longitude) async{
    return await orderStatusRepoDomain.changeOrderStatus(status,latitude,longitude);
  }
}