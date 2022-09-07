import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OnSignalPushNotification extends StatefulWidget {
  const OnSignalPushNotification({Key? key}) : super(key: key);

  @override
  State<OnSignalPushNotification> createState() =>
      _OnSignalPushNotificationState();
}

class _OnSignalPushNotificationState extends State<OnSignalPushNotification> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  static final String oneSignalAppId = "e84e8946-252f-4423-bce5-e6f68495ef8e";
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.cyan);
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
  }
}
