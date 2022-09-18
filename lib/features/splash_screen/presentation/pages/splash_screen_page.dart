import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/style/app_image.dart';
import 'package:gtc_rider/features/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        ImageApp.splashScreen,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
