import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../common_widgets/custom_divider.dart';
import '../../../common_widgets/forms/custom_text_field.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(
              Sizes.p24,
              Sizes.p48,
              Sizes.p24,
              0,
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.appLogoBlack,
                ),
                gapH48,
                Text(
                  'Sign in to your account',
                  style: Get.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                gapH16,
                Text(
                  'Log in to start and explore your personalized shopping experience.',
                  style: Get.textTheme.bodyMedium?.copyWith(
                    color: AppColors.neutral600,
                    fontWeight: Fonts.interRegular,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH40,
                PrimaryOutlinedButton(
                  hasText: true,
                  title: 'Continue with Google',
                  onPressed: () {},
                ),
                gapH40,
                const CustomDivider(
                  hasText: true,
                  text: 'or Log in with Email',
                ),
                gapH40,
                const CustomTextField(
                  labelText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                gapH16,
                const CustomTextField(
                  labelText: 'Password',
                  isSecret: true,
                ),
                gapH40,
                PrimaryButton(
                  buttonColor: AppColors.neutral800,
                  buttonLabel: 'Log in',
                  onPressed: () => Get.offAllNamed(
                    AppRoutes.baseRoute,
                  ),
                ),
                gapH24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Habitual?',
                      style: Get.textTheme.bodyMedium,
                    ),
                    PrimaryTextButton(
                      defaultTextStyle: false,
                      style: Get.textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                      buttonLabel: 'Sign up',
                      onPressed: () => Get.toNamed(
                        AppRoutes.signUpRoute,
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
