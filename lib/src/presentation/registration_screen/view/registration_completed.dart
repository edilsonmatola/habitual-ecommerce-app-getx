import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class RegistrationCompleted extends StatelessWidget {
  const RegistrationCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: Sizes.p24,
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Woohoo!',
                      style: Get.textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                    gapH24,
                    Text(
                      'Registration complete! Get ready to have the best shopping experiences of your life.',
                      style: Get.textTheme.displaySmall?.copyWith(
                        color: AppColors.neutral700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    gapH64,
                    PrimaryButton(
                      labelColor: AppColors.neutral800,
                      buttonLabel: 'Let the shopping begin!',
                      onPressed: () => Get.offAllNamed(
                        AppRoutes.baseRoute,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
