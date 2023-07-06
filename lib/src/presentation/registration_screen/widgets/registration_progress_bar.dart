import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class RegistrationProgressBar extends StatelessWidget {
  const RegistrationProgressBar({
    super.key,
    required this.currentStep,
    required this.stepName,
  });

  final int currentStep;
  final String stepName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Step $currentStep: $stepName',
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              PrimaryTextButton(
                buttonLabel: 'Exit',
                onPressed: () => Get.offAllNamed(
                  AppRoutes.baseRoute,
                ),
              ),
            ],
          ),
        ),
        gapH12,
        //* Progress Bar
        LinearProgressBar(
          maxSteps: 6,
          progressType: LinearProgressBar.progressTypeLinear,
          currentStep: currentStep,
          progressColor: AppColors.neutral900,
          backgroundColor: AppColors.neutral200,
        ),
      ],
    );
  }
}
