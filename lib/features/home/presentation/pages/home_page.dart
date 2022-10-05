import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/config/constants.dart';
import 'package:gtc_rider/core/local_storage.dart';
import 'package:gtc_rider/core/localization/local_controller.dart';
import 'package:gtc_rider/features/auth/login_screen/data/datasource/localdatasource/local_login_data_source.dart';
import 'package:gtc_rider/features/auth/login_screen/domain/entities/login_base_entity.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

class HomePage extends GetView<MyLocaleController> {
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
                    child: Text('english'.tr)),
                ElevatedButton(
                    onPressed: () => myLocaleController.changeLanguage('ar'),
                    child: Text('arabic'.tr)),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.loginPage);
                    },
                    child: Text('login'.tr)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // FutureBuilder(
            //   builder: ((context, snapshot) {
            //     if (snapshot.hasData) {
            //       LoginBaseEntity lbe = snapshot.data as LoginBaseEntity;
            //       return Text(
            //           '${lbe.dataa?.name} \n ${lbe.dataa?.email} \n${lbe.dataa?.mobile}\n${lbe.dataa?.zone.title}');
            //     } else {
            //       return const Text('no rider info');
            //     }
            //   }),
            //   future: LocaleLoginDataSource().readFromLocalStorageLoginRiderInfo(
            //       Constants.loginRiderInfoKey),
            // ),
          ],
        ));
  }
}
