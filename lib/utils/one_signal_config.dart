import 'package:gtc_rider/core/config/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

mixin OneSignalConfig{
  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(Constants.oneSignalAppId);
  }
}