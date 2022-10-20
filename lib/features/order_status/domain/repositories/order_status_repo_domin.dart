import 'package:dartz/dartz.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/order_status/domain/entity/order_status_response_entity.dart';

abstract class OrderStatusRepoDomain{
      Future<Either<Failure,OrderStatusResponseEntity>> changeOrderStatus(String status,String latitude,String longitude);

}