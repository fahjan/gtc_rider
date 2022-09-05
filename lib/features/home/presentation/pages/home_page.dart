import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/localization/local_controller.dart';
import 'package:gtc_rider/features/home/presentation/controllers/home_controllers.dart';

class HomePage extends GetView<Locale> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController myLocaleController = Get.find();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('home_page'.tr),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Select_language'.tr),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => myLocaleController.changeLanguage('en'),
                    child: const Text('English')),
                ElevatedButton(
                    onPressed: () => myLocaleController.changeLanguage('ar'),
                    child: const Text('عربي')),
              ],
            )
          ],
        ));
  }
}
