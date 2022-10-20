import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/exceptions/failures.dart';
import 'package:gtc_rider/features/order_status/domain/entity/order_status_response_entity.dart';
import 'package:gtc_rider/features/order_status/domain/usecases/order_status_usecases.dart';
import 'package:maps_launcher/maps_launcher.dart';

class OrderStatusController extends GetxController {
  OrderStatusUseCase orderStatusUseCase;
  OrderStatusController(this.orderStatusUseCase);

  Future<OrderStatusResponseEntity?> changeOrderStatus(
      String status, String latitude, String longitude) async {
    Either<Failure, OrderStatusResponseEntity>? data =
        await orderStatusUseCase(status, latitude, longitude);

    MapsLauncher.launchCoordinates(31.5287982, 34.4531379);
    if (data.isRight()) {
      data.fold((l) => Exception(), (r) {
        Get.showSnackbar(GetSnackBar(
          message: 'Order status : ${r.message} ',
          duration: Duration(seconds: 4),
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.lightBlue,
        ));
        return r;
      });
    }
    data.fold((l) => Exception(), (r) {
      return r;
    });
  }
}
