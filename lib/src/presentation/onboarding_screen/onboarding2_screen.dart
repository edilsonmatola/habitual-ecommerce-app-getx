import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../common_widgets/primary_button.dart';
import '../../core/constants/constants_export.dart';
import '../../routes/routes_export.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: AppDimensions.onboardingScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AppAssets.appLogoBlackSmall,
                    width: 24,
                    height: 24,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColors.neutral600,
                        fontFamily: AppFonts.interFontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              gapH56,
              SvgPicture.asset(
                'assets/images/products.svg',
                width: 342,
                height: 342,
              ),
              gapH56,
              Text(
                AppTitles.onboarding2Title,
                style: TextStyle(
                  color: AppColors.neutral800,
                  fontSize: 32,
                  fontFamily: AppFonts.loraFontFamily,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              gapH16,
              Text(
                AppTitles.onboarding2Description,
                style: TextStyle(
                  color: AppColors.neutral600,
                  fontSize: 16,
                  fontFamily: AppFonts.interFontFamily,
                ),
                textAlign: TextAlign.center,
              ),
              gapH70,
              PrimaryButton(
                buttonLabel: 'Next',
                color: AppColors.neutral800,
                onPressed: () => Get.toNamed(AppRoutes.onBoarding3Route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
