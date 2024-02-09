import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/routes/routes_export.dart';

import '../../../app_assets.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.onBoarding1Route),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(
                      Assets.intro,
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
