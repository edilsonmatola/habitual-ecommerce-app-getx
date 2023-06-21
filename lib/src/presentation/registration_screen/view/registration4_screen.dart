import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../core/core_export.dart';
import '../widgets/registration_progress_bar.dart';

class Registration4Screen extends StatelessWidget {
  const Registration4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.p16,
          ),
          child: Column(
            children: [
              const RegistrationProgressBar(
                currentStep: 4,
                stepName: 'Interests',
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p24,
                ),
                child: Column(
                  children: [
                    Text(
                      'What do you want to achieve with Habitual?',
                      style: Get.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    gapH40,
                    Align(
                      alignment: Alignment.centerRight,
                      child: PrimaryButton(
                        buttonWidth: 165,
                        buttonColor: AppColors.neutral800,
                        buttonLabel: 'Continue',
                        onPressed: () => Get.toNamed(
                          AppRoutes.registration5Route,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
