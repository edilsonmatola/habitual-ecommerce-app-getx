import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/common_widgets_export.dart';
import '../../core/core_export.dart';
import '../../routes/routes_export.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: SingleChildScrollView(
              padding: onboardingScreenPadding.copyWith(
                top: Sizes.p280,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    AppTitles.introTitle,
                    style: Get.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  gapH70,
                  PrimaryButton(
                    labelColor: AppColors.neutral800,
                    onPressed: () => Get.toNamed(AppRoutes.onBoarding1Route),
                    buttonLabel: "Let's begin",
                    buttonColor: AppColors.yellow300,
                  ),
                  gapH16,
                  PrimaryTextButton(
                    textColor: AppColors.neutral800,
                    fontWeight: FontWeight.w600,
                    buttonLabel: 'Already have an account?',
                    onPressed: () => Get.toNamed(
                      AppRoutes.signInRoute,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
