import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_assets.dart';
import '../../../routes/app_pages.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.onBoarding3Route),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(
                      Assets.onboarding2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
