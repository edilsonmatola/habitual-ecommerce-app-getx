import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/custom_divider.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/registration_progress_bar.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../core/core_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                currentStep: 1,
                stepName: 'Account',
              ),
              gapH40,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p24,
                ),
                child: Column(
                  children: [
                    Text(
                      'Create account',
                      style: Get.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    gapH16,
                    Text(
                      'Find the things that you love!',
                      style: Get.textTheme.bodyMedium?.copyWith(
                        color: AppColors.neutral600,
                        fontWeight: Fonts.interRegular,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    gapH40,
                    Container(
                      width: 200,
                      height: 40,
                      color: AppColors.blue500,
                    ),
                    gapH40,
                    const CustomDivider(
                      hasText: true,
                      text: 'or Sign up with Email',
                    ),
                    gapH40,
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Full name'),
                      ),
                    ),
                    gapH16,
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                    ),
                    gapH16,
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                    ),
                    gapH40,
                    PrimaryButton(
                      buttonColor: AppColors.neutral800,
                      buttonLabel: 'Sign Up',
                      onPressed: () => Get.offAllNamed(
                        AppRoutes.registration1Route,
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
