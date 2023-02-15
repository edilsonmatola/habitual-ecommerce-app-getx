// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';

import '../presentation/introduction_screen/introduction_screen.dart';
import 'app_routes.dart';

// part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.introRoute;

  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.introRoute,
      page: () => const IntroductionScreen(),
    ),
  ];
}
