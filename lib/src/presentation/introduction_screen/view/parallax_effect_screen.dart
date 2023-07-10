import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/routes_export.dart';

class ParallaxEffectScreen extends StatefulWidget {
  const ParallaxEffectScreen({Key? key}) : super(key: key);

  @override
  State<ParallaxEffectScreen> createState() => _ParallaxEffectScreenState();
}

class _ParallaxEffectScreenState extends State<ParallaxEffectScreen> {
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
                    height: Sizes.deviceHeight * 2 - (Sizes.deviceHeight * .80),
                    // height: 1200,
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
              //* RayBan Glasses
              ParallaxImage(
                right: Sizes.deviceWidth * .10 + divFive,
                left: 0,
                top: Sizes.deviceHeight * .010 + divFive,
                imageUrl:
                    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/805289602057__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
              ),
              // * 48 Laws of Power
              ParallaxImage(
                right: 0,
                left: Sizes.deviceWidth * .70,
                top: Sizes.deviceHeight * .30 - divOne,
                imageUrl:
                    'https://studentstore.pk/wp-content/uploads/2021/01/B_516.png',
              ),
              // * Macbook Pro
              ParallaxImage(
                left: Sizes.deviceWidth * 000 + divOne + divFive,
                right: 0,
                top: Sizes.deviceHeight * .60 -
                    (divOne - Sizes.deviceHeight * .30),
                imageUrl:
                    'https://myistore.co.zm/cdn/shop/files/MPB_SP_1200x.png?v=1685953221',
              ),
              // * 2014 Forest Hills Drive
              ParallaxImage(
                right: 280,
                left: 0,
                top: Sizes.deviceHeight * .20 + divOne,
                imageUrl:
                    'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_104146487/fee_786_587_png',
              ),
              // * Chuck 70 Hi Sneakers
              // ParallaxImage(
              //   right: Sizes.deviceWidth * .50 - divOne,
              //   left: Sizes.deviceWidth * .30,
              //   top: Sizes.deviceHeight * .60 -
              //       (divOne - Sizes.deviceHeight * .10),
              //   imageUrl:
              //       'https://www.courir.com/dw/image/v2/BCCL_PRD/on/demandware.static/-/Sites-master-catalog-courir/default/dw250bc879/images/hi-res/001505843_101.png?sw=600&sh=600&sm=fit&q=90',
              // ),
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
    required this.imageUrl,
    required this.right,
  }) : super(key: key);

  final double left;
  final double right;
  final double top;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      left: left,
      top: top,
      child: CachedNetworkImage(
        placeholder: (_, url) => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        fit: BoxFit.contain,
        alignment: Alignment.center,
        imageUrl: imageUrl,
        width: Sizes.deviceWidth * .15,
        height: Sizes.deviceHeight * .15,
      ),
    );
  }
}


/* 

Text(
                    AppTitles.introTitle,
                    style: Get.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  gapH70,
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
 */