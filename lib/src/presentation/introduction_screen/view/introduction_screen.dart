import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  double divOne = 0;
  double divFive = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener(
          onNotification: (notify) {
            if (notify is ScrollUpdateNotification) {
              setState(() {
                divOne += notify.scrollDelta! / 1;
                divFive += notify.scrollDelta! / 5;
              });
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                shrinkWrap: true,
                primary: true,
                children: [
                  Container(
                    height: Sizes.deviceHeight * 2 - (Sizes.deviceHeight * .80),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Center(
                      child: Text(
                        AppTitles.introTitle,
                        style: Get.textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              //* Burberry Sunglasses
              ParallaxImage(
                right: Sizes.deviceWidth * .10 + divFive,
                left: 0,
                top: Sizes.deviceHeight * .010 + divFive,
                image: AppAssets.paralaxImage1,
              ),
              // * The Metamorphosis
              ParallaxImage(
                right: 0,
                left: Sizes.deviceWidth * .70,
                top: Sizes.deviceHeight * .30 - divOne,
                image: AppAssets.paralaxImage2,
              ),
              // * Macbook Pro
              ParallaxImage(
                left: Sizes.deviceWidth * 000 + divOne + divFive,
                right: 0,
                top: Sizes.deviceHeight * .60 -
                    (divOne - Sizes.deviceHeight * .30),
                image: AppAssets.paralaxImage4,
              ),
              // * Good Kid mAAd City
              ParallaxImage(
                right: 280,
                left: 0,
                top: Sizes.deviceHeight * .20 + divOne,
                image: AppAssets.paralaxImage3,
              ),
              Positioned(
                left: Sizes.p24,
                right: Sizes.p24,
                top: Sizes.deviceHeight * .80 - divOne,
                child: Column(
                  children: [
                    PrimaryButton(
                      labelColor: AppColors.neutral800,
                      onPressed: () => Get.toNamed(AppRoutes.onBoardingRoute),
                      buttonLabel: "Let's begin",
                      buttonColor: AppColors.yellow300,
                    ),
                    gapH16,
                    PrimaryTextButton(
                      textColor: AppColors.neutral800,
                      fontWeight: FontWeight.w600,
                      buttonLabel: 'Already have an account?',
                      onPressed: () => Get.toNamed(
                        AppRoutes.signInRoute,
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

class ParallaxImage extends StatelessWidget {
  const ParallaxImage({
    Key? key,
    required this.left,
    required this.top,
    required this.image,
    required this.right,
  }) : super(key: key);

  final double left;
  final double right;
  final double top;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      left: left,
      top: top,
      child: Image(
        image: ExactAssetImage(
          image,
        ),
        width: Sizes.deviceWidth * .15,
        height: Sizes.deviceHeight * .15,
      ),
    );
  }
}
