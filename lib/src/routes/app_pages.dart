// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';

import '../presentation/introduction_screen/introduction_screen.dart';
import '../presentation/onboarding_screen/onboarding1_screen.dart';
import '../presentation/onboarding_screen/onboarding2_screen.dart';
import '../presentation/onboarding_screen/onboarding3_screen.dart';
import 'app_routes.dart';

// part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.introRoute;

  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.introRoute,
      page: () => const IntroductionScreen(),
    ),
    /* 
    * ===== Onboarding Pages =====
     */
    GetPage(
      name: AppRoutes.onBoarding1Route,
      page: () => const OnBoarding1Screen(),
    ),
    GetPage(
      name: AppRoutes.onBoarding2Route,
      page: () => const OnBoarding2Screen(),
    ),
    GetPage(
      name: AppRoutes.onBoarding3Route,
      page: () => const OnBoarding3Screen(),
    ),
  ];
}
