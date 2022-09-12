import 'package:gtc_rider/core/config/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalConfig{
  static Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(Constants.oneSignalAppId);
  }
}