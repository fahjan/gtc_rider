import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalConfig {
  static Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(Constants.oneSignalAppId);
  }

  static Future<void> getDeviceFcmToken() async {
    OSDeviceState? osDeviceState = await OneSignal.shared.getDeviceState();
    await GetStorage().write('rider_fcm_token', osDeviceState?.pushToken);
    debugPrint("mohammed : ${osDeviceState?.pushToken}");
  }
}
