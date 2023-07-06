import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/registration_progress_bar.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../common_widgets/svg_icon.dart';

class Registration2Screen extends StatelessWidget {
  const Registration2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p16,
                  ),
                  child: Column(
                    children: [
                      const RegistrationProgressBar(
                        currentStep: 2,
                        stepName: 'Personalization',
                      ),
                      gapH32,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.p24,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Add a Photo',
                              style: Get.textTheme.headlineSmall,
                            ),
                            gapH12,
                            Text(
                              'Add a photo so other members know who you are.',
                              style: Get.textTheme.bodyMedium?.copyWith(
                                color: AppColors.neutral600,
                                fontWeight: Fonts.interRegular,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            gapH40,
                            CircleAvatar(
                              maxRadius: 60,
                              minRadius: 60,
                              backgroundColor: AppColors.neutral100,
                              child: SvgIcon(
                                icon: AppIcons.profileIcon,
                                width: 40,
                                height: 40,
                                color: AppColors.neutral400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                Sizes.p24,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryTextButton(
                      buttonLabel: 'Skip',
                      onPressed: () => Get.toNamed(
                        AppRoutes.registration3Route,
                      ),
                    ),
                    Expanded(
                      flex: -1,
                      child: PrimaryButton(
                        buttonWidth: 165,
                        buttonColor: AppColors.neutral800,
                        buttonLabel: 'Upload my photo',
                        onPressed: () => Get.toNamed(
                          AppRoutes.registration3Route,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
