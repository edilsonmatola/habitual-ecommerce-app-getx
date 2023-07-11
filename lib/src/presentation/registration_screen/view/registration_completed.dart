import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class RegistrationCompleted extends StatefulWidget {
  const RegistrationCompleted({Key? key}) : super(key: key);

  @override
  State<RegistrationCompleted> createState() => _RegistrationCompletedState();
}

class _RegistrationCompletedState extends State<RegistrationCompleted> {
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
                print('divOne: $divOne');
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.p24,
                    ),
                    height: Sizes.deviceHeight * 2 - (Sizes.deviceHeight * .80),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Woohoo!',
                          style: Get.textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        gapH24,
                        Text(
                          'Registration complete! Get ready to have the best shopping experiences of your life.',
                          style: Get.textTheme.bodyLarge?.copyWith(
                            color: AppColors.neutral700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //* PS5 Controller
              ParallaxImage(
                right: Sizes.deviceWidth * .10 + divFive,
                left: 0,
                top: Sizes.deviceHeight * .010 + divFive,
                image: AppAssets.paralaxImage7,
              ),
              // * Chuck 70 Hi Sneakers
              ParallaxImage(
                right: 0,
                left: Sizes.deviceWidth * .70,
                top: Sizes.deviceHeight * .30 - divOne,
                image: AppAssets.paralaxImage9,
              ),
              // * Alienware
              ParallaxImage(
                left: Sizes.deviceWidth * 000 + divOne + divFive,
                right: -Sizes.deviceWidth * .20,
                top: Sizes.deviceHeight * .60 -
                    (divOne - Sizes.deviceHeight * .30),
                image: AppAssets.paralaxImage11,
              ),
              // * Hobbit Book
              ParallaxImage(
                left: -Sizes.deviceWidth * .20,
                right: Sizes.deviceWidth * 000 + divOne + divFive,
                top: Sizes.deviceHeight * .60 -
                    (divOne - Sizes.deviceHeight * .30),
                image: AppAssets.paralaxImage10,
              ),
              // * Frender Stratocaster - Guittar
              ParallaxImage(
                right: 280,
                left: 0,
                top: Sizes.deviceHeight * .20 + divOne,
                image: AppAssets.paralaxImage8,
              ),
              Positioned(
                left: Sizes.p24,
                right: Sizes.p24,
                top: Sizes.deviceHeight * .80 - divOne,
                child: Column(
                  children: [
                    PrimaryButton(
                      labelColor: AppColors.neutral800,
                      onPressed: () => Get.offAllNamed(AppRoutes.baseRoute),
                      buttonLabel: 'Let the shopping begin!',
                      buttonColor: AppColors.yellow300,
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
