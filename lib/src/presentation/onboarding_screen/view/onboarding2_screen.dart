import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';
import '../widgets/header_section.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({Key? key, this.onClick}) : super(key: key);

  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: onboardingScreenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderSection(
            onPressed: onClick,
          ),
          gapH16,
          SvgPicture.asset(
            AppAssets.productsImage,
            width: 320,
            height: 320,
          ),
          Text(
            AppTitles.onboarding2Title,
            style: Get.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          gapH16,
          Text(
            AppTitles.onboarding2Description,
            style: Get.textTheme.displaySmall?.copyWith(
              color: AppColors.neutral600,
              fontWeight: Fonts.interRegular,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          // gapH32,
          // PrimaryButton(
          //   buttonLabel: 'Next',
          //   buttonColor: AppColors.neutral800,
          //   onPressed: () => Get.toNamed(
          //     AppRoutes.onBoarding3Route,
          //   ),
          // ),
        ],
      ),
    );
  }
}
