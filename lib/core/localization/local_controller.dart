import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  late Rx<Position?> position = Position(
    timestamp: DateTime.now(),
    accuracy: 0,
    latitude: 0,
    longitude: 0,
    altitude: 0,
    heading: 0,
    speed: 0,
    speedAccuracy: 0,
    isMocked: true,
  ).obs;
  void changeLanguage(String codelanguage) {
    Locale locale = Locale(codelanguage);
    Get.updateLocale(locale);
  }

  @override
  void onReady() {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 2,
    );
    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? _position) {
              
      print(_position?.longitude.toString());
      position(_position);
    });

    super.onReady();
  }
}
