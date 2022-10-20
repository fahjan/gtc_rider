import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:gtc_rider/core/localization/local_controller.dart';
import 'package:gtc_rider/features/order_status/controllers/order_status_controller.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OneSignalConfig {
  static Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(Constants.oneSignalAppId);
  }

  static Future<void> getDeviceFcmToken() async {
    OSDeviceState? osDeviceState = await OneSignal.shared.getDeviceState();
    await GetStorage().write('rider_fcm_token', osDeviceState?.userId);
    debugPrint("mohammed : ${osDeviceState?.userId}");
  }

  static Future<void> notificationHandler() async {
    OneSignal.shared.setNotificationOpenedHandler((openedResult) {});
    OneSignal.shared.setNotificationWillShowInForegroundHandler((event) {
      Map<String, dynamic>? notificationResponse =
          event.notification.additionalData;

      print('mohammed notification body :${event.notification.body}');
      log('mohammed notification additionalData delivery_address :${notificationResponse!['delivery_address']}');
      showBottomSheet<void>(
          notificationResponse['delivery_address'].toString(),
          notificationResponse['pickup_address'].toString(),
          notificationResponse['delivery_fee'].toString(),
          notificationResponse['rider_tip'].toString());
      log('mohammed notification additionalData pickup_address :${notificationResponse['pickup_address']}');
      log('mohammed notification additionalData delivery_fee :${notificationResponse['delivery_fee']}');
      log('mohammed notification additionalData rider_tip :${notificationResponse['rider_tip']}');
      log('mohammed notification additionalData rider_tip :${event.notification.additionalData}');

      print(
          'mohammed notification androidNotificationId:${event.notification.androidNotificationId}');
      print(
          'mohammed notification groupMessage:${event.notification.groupMessage}');
      print(
          'mohammed notification notificationId:${event.notification.notificationId}');
    });
  }

  static void showBottomSheet<T>(String delivery_address, String pickup_address,
      String delivery_fee, String rider_tip) async {
    log('You are in bottom sheet');
    await Get.bottomSheet<T>(
      Material(
        color: Colors.white,
        child: SizedBox(
          height: 243.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 32, top: 32),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/left.png',
                      //  height: 70,
                      //  width: 8.5
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 16.0,
                        start: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('From'),
                          Text(pickup_address),
                          SizedBox(
                            width: 350,
                            child: Divider(
                              height: 10.6,
                              indent: 0,
                              endIndent: 0,
                              thickness: 1,
                            ),
                          ),
                          Text('TO Address'),
                          Text(delivery_address),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 32,
                  end: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rider tip'),
                    Text('$rider_tip\$'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 32,
                  end: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery fee'),
                    Text('$delivery_fee\$'),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.keyboard_double_arrow_left_outlined),
                    const Text(
                      'Reject',
                    ),
                    CircularPercentIndicator(
                      radius: 20.0,
                      lineWidth: 5.0,
                      percent: .3,
                      center: const Text("16"),
                      progressColor: Colors.green,
                      fillColor: Colors.white,
                      arcBackgroundColor: Colors.grey,
                      arcType: ArcType.FULL,
                    ),
                    InkWell(
                        onTap: () async{
                          Rx<Position?> position =
                              Get.find<MyLocaleController>().position;
                          log('mohammed latitude :${position.value!.latitude.toString()}');
                          await Get.find<OrderStatusController>().changeOrderStatus(
                              'accepted',
                              position.value!.latitude.toString(),
                              position.value!.longitude.toString());
                        },
                        child: const Text('Accept')),
                    const Icon(Icons.keyboard_double_arrow_right_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // barrierColor: Colors.red[50],
      // isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
        // side: const BorderSide(
        //   width: 5,
        //   color: Colors.black,
        // ),
      ),
      //enableDrag: false,
    );
  }
}
