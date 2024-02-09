import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../app_assets.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.onBoarding2Route),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(
                      Assets.onboarding1,
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
