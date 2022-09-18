import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:gtc_rider/features/home/presentation/binding/home_binding.dart';
import 'package:gtc_rider/features/home/presentation/pages/home_page.dart';
import 'package:gtc_rider/utils/routing/app_routes.dart';

final List<GetPage> pages = <GetPage>[
  GetPage(
    name: AppRoutes.home,
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
];
