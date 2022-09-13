import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:gtc_rider/features/home/presentation/binding/home_binding.dart';
import 'package:gtc_rider/features/home/presentation/pages/home_page.dart';
import 'package:gtc_rider/features/splash_Screen/presentation/pages/splash_screen_page.dart';
import 'package:gtc_rider/features/splash_screen/binding/splash_screen_binding.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

final List<GetPage> pages = <GetPage>[
  GetPage(
    name: AppRoutes.home,
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => const SplashScreenPage(),
    binding: SplashScreenBinding(),
  ),
];
