import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/core/localization/locale_strings.dart';
import 'package:gtc_rider/utils/one_signal_config.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';
import 'package:gtc_rider/utils/routing/pages.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await OneSignalConfig.initPlatformState();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            translations: LocaleString(),
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.splashScreen,
            getPages: pages,
            locale: const Locale('en', 'US'),
          );
        });
  }
}
