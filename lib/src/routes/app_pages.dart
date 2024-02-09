import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/introduction_screen/view/introduction_screen.dart';

import '../presentation/base_screen/base_screen.dart';
import '../presentation/onboarding_screen/view/onboarding1_screen.dart';
import '../presentation/onboarding_screen/view/onboarding2_screen.dart';
import '../presentation/onboarding_screen/view/onboarding3_screen.dart';

abstract class AppPages {
  static const initial = AppRoutes.introRoute;

  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.introRoute,
      page: () => const IntroductionScreen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding1Route,
      page: () => const OnBoarding1Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding2Route,
      page: () => const OnBoarding2Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.onBoarding3Route,
      page: () => const OnBoarding3Screen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.baseRoute,
      page: () => const BaseScreen(),
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      transition: Transition.rightToLeft,
    ),
  ];
}

abstract class AppRoutes {
  static const introRoute = '/intro';
  static const onBoardingRoute = '/onBoarding';
  static const onBoarding1Route = '/onBoarding1';
  static const onBoarding2Route = '/onBoarding2';
  static const onBoarding3Route = '/onBoarding3';
  static const baseRoute = '/';
  static const profileRoute = '/profile';
  static const searchRoute = '/search';
  static const wishlistRoute = '/wishlist';
  static const deliveryRoute = '/delivery';
}
