import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:gtc_rider/features/home/presentation/binding/home_binding.dart';
import 'package:gtc_rider/features/auth/login_screen/binding/login_binding.dart';
import 'package:gtc_rider/features/home/presentation/pages/home_page.dart';
import 'package:gtc_rider/features/auth/login_screen/presentation/pages/login_page.dart';
import 'package:gtc_rider/features/order_status/binding/order_status_binding.dart';
import 'package:gtc_rider/features/splash_screen/binding/splash_screen_binding.dart';
import 'package:gtc_rider/features/splash_screen/presentation/pages/splash_screen_page.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

final List<GetPage> pages = <GetPage>[
  GetPage(
    name: AppRoutes.home,
    page: () => const HomePage(),
    bindings: [HomeBinding(), OrderStatusBinding()],
  ),
  GetPage(
    name: AppRoutes.loginPage,
    page: () => LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => const SplashScreenPage(),
    binding: SplashScreenBinding(),
  ),
];
