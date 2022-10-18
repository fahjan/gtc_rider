import 'package:gtc_rider/features/order_status/data/model/order_status_response.dart';
import 'package:gtc_rider/features/order_status/domain/entity/order_status_response_entity.dart';

extension OrderStatusResponseModelToOrderStatusResponseEntity
    on OrderStatusResponse {
  OrderStatusResponseEntity toEntity() {
    return OrderStatusResponseEntity(
      message,
    );
  }
}
