import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/registration_progress_bar.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/user_goal_card.dart';
import 'package:habitual/src/routes/routes_export.dart';

class Registration3Screen extends StatefulWidget {
  const Registration3Screen({super.key});

  @override
  State<Registration3Screen> createState() => _Registration3ScreenState();
}

class _Registration3ScreenState extends State<Registration3Screen> {
  final List<int> selectedIndex = [];

  final userGoals = [
    'Discover new products',
    'Make monthly shopping easier',
    'Relevant recommendations',
    'Get notified of deals',
  ];
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
                            Column(
                              children: [
                                ...List.generate(
                                  userGoals.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: Sizes.p12,
                                    ),
                                    child: UserGoalCard(
                                      onTap: () {
                                        setState(() {
                                          if (selectedIndex.contains(index)) {
                                            selectedIndex.remove(index);
                                          } else {
                                            selectedIndex.add(index);
                                          }
                                        });
                                      },
                                      text: userGoals[index],
                                      isSelected:
                                          !selectedIndex.contains(index),
                                    ),
                                  ),
                                ),
                              ],
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
                        forwardIcon: true,
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
            ),
          ],
        ),
      ),
    );
  }
}
