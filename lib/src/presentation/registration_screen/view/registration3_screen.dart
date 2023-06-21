import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/registration_progress_bar.dart';
import 'package:habitual/src/routes/routes_export.dart';

class Registration3Screen extends StatelessWidget {
  const Registration3Screen({super.key});

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
                currentStep: 3,
                stepName: 'Your Goals',
              ),
              gapH40,
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
                    gapH12,
                    Text(
                      'This will help us make a unique experience that is just for you.',
                      style: Get.textTheme.bodyMedium?.copyWith(
                        color: AppColors.neutral600,
                        fontWeight: Fonts.interRegular,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    gapH32,
                    Container(
                      width: 200,
                      height: 100,
                      color: AppColors.blue300,
                    ),
                    gapH12,
                    Container(
                      width: 200,
                      height: 100,
                      color: AppColors.blue300,
                    ),
                    gapH12,
                    Container(
                      width: 200,
                      height: 100,
                      color: AppColors.blue300,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: PrimaryButton(
                        buttonWidth: 165,
                        buttonColor: AppColors.neutral800,
                        buttonLabel: 'Continue',
                        onPressed: () => Get.toNamed(
                          AppRoutes.registration4Route,
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
