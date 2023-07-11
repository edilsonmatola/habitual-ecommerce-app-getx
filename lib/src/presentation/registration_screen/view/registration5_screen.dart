import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/custom_divider.dart';
import 'package:habitual/src/presentation/registration_screen/widgets/interest_details_tile.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../core/core_export.dart';
import '../widgets/registration_progress_bar.dart';

class Registration5Screen extends StatefulWidget {
  const Registration5Screen({super.key});

  @override
  State<Registration5Screen> createState() => _Registration5ScreenState();
}

class _Registration5ScreenState extends State<Registration5Screen> {
  final List<int> selectedMusicIndex = [];
  final List<int> selectedFashionIndex = [];
  final List<int> selectedGamingIndex = [];

  final musicInterests = ['Vynil', 'Live Music', 'Hip Hop', 'Instruments'];

  final fashionInterests = ['Sneakers', 'Glasses', 'Dresses', 'Minimalism'];

  final gamingInterests = ['Playstation', 'Xbox', 'PC', "RPG's"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.p16,
            ),
            child: Column(
              children: [
                const RegistrationProgressBar(
                  currentStep: 5,
                  stepName: 'Interest Details',
                ),
                gapH32,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p24,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Let's dig deeper!",
                        style: Get.textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                      gapH12,
                      Text(
                        'We have some recommended options for the interests that you have chosen.',
                        style: Get.textTheme.bodyMedium?.copyWith(
                          color: AppColors.neutral600,
                          fontWeight: Fonts.interRegular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      gapH40,
                      Text(
                        'Music',
                        style: Get.textTheme.displayLarge,
                      ),
                      gapH16,
                      ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: musicInterests.length,
                        separatorBuilder: (_, index) => gapH8,
                        itemBuilder: (_, index) => InterestDetailsTile(
                          value: selectedMusicIndex.contains(index),
                          interestTitle: musicInterests[index],
                          onChanged: (value) {
                            setState(() {
                              if (selectedMusicIndex.contains(index)) {
                                selectedMusicIndex.remove(index);
                              } else {
                                selectedMusicIndex.add(index);
                              }
                            });
                          },
                        ),
                      ),
                      gapH16,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PrimaryTextButton(
                          defaultTextStyle: false,
                          textColor: AppColors.neutral900,
                          style: Get.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          buttonLabel: 'See all 24 options',
                          onPressed: () {},
                        ),
                      ),
                      gapH24,
                      const CustomDivider(),
                      gapH24,
                      Text(
                        'Fashion',
                        style: Get.textTheme.displayLarge,
                      ),
                      gapH16,
                      ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: fashionInterests.length,
                        separatorBuilder: (_, index) => gapH8,
                        itemBuilder: (_, index) => InterestDetailsTile(
                          value: selectedFashionIndex.contains(index),
                          interestTitle: fashionInterests[index],
                          onChanged: (value) {
                            setState(() {
                              setState(() {
                                if (selectedFashionIndex.contains(index)) {
                                  selectedFashionIndex.remove(index);
                                } else {
                                  selectedFashionIndex.add(index);
                                }
                              });
                            });
                          },
                        ),
                      ),
                      gapH16,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PrimaryTextButton(
                          defaultTextStyle: false,
                          textColor: AppColors.neutral900,
                          style: Get.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          buttonLabel: 'See all 12 options',
                          onPressed: () {},
                        ),
                      ),
                      gapH24,
                      const CustomDivider(),
                      gapH24,
                      Text(
                        'Gaming',
                        style: Get.textTheme.displayLarge,
                      ),
                      gapH16,
                      ListView.separated(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: gamingInterests.length,
                        separatorBuilder: (_, index) => gapH8,
                        itemBuilder: (_, index) => InterestDetailsTile(
                          value: selectedGamingIndex.contains(index),
                          interestTitle: gamingInterests[index],
                          onChanged: (value) {
                            setState(() {
                              setState(() {
                                if (selectedGamingIndex.contains(index)) {
                                  selectedGamingIndex.remove(index);
                                } else {
                                  selectedGamingIndex.add(index);
                                }
                              });
                            });
                          },
                        ),
                      ),
                      gapH16,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PrimaryTextButton(
                          defaultTextStyle: false,
                          textColor: AppColors.neutral900,
                          style: Get.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          buttonLabel: 'See all 48 options',
                          onPressed: () {},
                        ),
                      ),
                      gapH32,
                      Row(
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
                                AppRoutes.registrationCompleteRoute,
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
    );
  }
}
