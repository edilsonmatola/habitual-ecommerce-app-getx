import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../common_widgets/primary_button.dart';
import '../../core/core_export.dart';
import '../../routes/routes_export.dart';
import 'widgets/header_section.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: onboardingScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderSection(
                onPressed: () => Get.toNamed(AppRoutes.onBoarding3Route),
              ),
              gapH16,
              SvgPicture.asset(
                AppAssets.lookingImage,
                width: 342,
                height: 342,
              ),
              gapH16,
              Text(
                AppTitles.onboarding1Title,
                style: Get.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              gapH16,
              Text(
                AppTitles.onboarding1Description,
                style: Get.textTheme.displaySmall?.copyWith(
                  color: AppColors.neutral600,
                  fontWeight: AppFonts.interRegular,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              gapH32,
              PrimaryButton(
                buttonLabel: 'Next',
                buttonColor: AppColors.neutral800,
                onPressed: () => Get.toNamed(AppRoutes.onBoarding2Route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
