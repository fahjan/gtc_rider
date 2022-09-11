import 'package:flutter/material.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OnSignalpage extends StatefulWidget {
  const OnSignalpage({Key? key}) : super(key: key);

  @override
  State<OnSignalpage> createState() => _OnSignalpageState();
}

class _OnSignalpageState extends State<OnSignalpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(Constants.oneSignalAppId);
  }
}
