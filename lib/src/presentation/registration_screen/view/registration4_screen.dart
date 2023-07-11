import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../core/core_export.dart';
import '../widgets/registration_progress_bar.dart';
import '../widgets/user_interest_category_card.dart';

class Registration4Screen extends StatefulWidget {
  const Registration4Screen({super.key});

  @override
  State<Registration4Screen> createState() => _Registration4ScreenState();
}

class _Registration4ScreenState extends State<Registration4Screen> {
  final List<int> selectedIndex = [];

  final colors = [
    AppColors.purple300,
    AppColors.blue300,
    AppColors.red300,
    AppColors.green300,
    AppColors.yellow300,
  ];

  final images = [
    'https://bookbins.in/wp-content/uploads/2021/08/The-48-Laws-Of-Power-Robert-Greene-Buy-Online-Bookbins-1.png',
    'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_104146487/fee_786_587_png',
    'https://media.croma.com/image/upload/v1685969130/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256606_ufqgl3.png',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597665117__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
    'https://gmedia.playstation.com/is/image/SIEPDC/dualsense-edge-listing-thumb-01-en-23aug22?\$1200px--t\$',
  ];

  final categories = [
    'Reading',
    'Music',
    'Tech',
    'Fashion',
    'Gaming',
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
                              'Get started by picking some interests.',
                              style: Get.textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            gapH40,
                            SizedBox(
                              height: Sizes.deviceHeight * .5,
                              child: ListView.separated(
                                itemCount: categories.length,
                                separatorBuilder: (_, index) => gapW16,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    UserInterestCategoryCard(
                                  imageUrl: images[index],
                                  isSelected: selectedIndex.contains(index),
                                  color: colors[index],
                                  category: categories[index],
                                  onTap: () {
                                    setState(() {
                                      if (selectedIndex.contains(index)) {
                                        selectedIndex.remove(index);
                                        print(selectedIndex);
                                      } else {
                                        selectedIndex.add(index);
                                        print(selectedIndex);
                                      }
                                    });
                                  },
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
                          AppRoutes.registration5Route,
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
