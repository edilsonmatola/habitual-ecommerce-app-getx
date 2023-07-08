import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/onboarding_screen/view/onboarding1_screen.dart';
import 'package:habitual/src/presentation/onboarding_screen/view/onboarding2_screen.dart';
import 'package:habitual/src/presentation/onboarding_screen/view/onboarding3_screen.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../core/core_export.dart';

class OnboardContent extends StatefulWidget {
  const OnboardContent({Key? key}) : super(key: key);

  @override
  State<OnboardContent> createState() => _OnboardContentState();
}

class _OnboardContentState extends State<OnboardContent> {
  late PageController _pageController;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _progress = (_pageController.page ?? 0);
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: PageView(
                    physics: const PageScrollPhysics(),
                    controller: _pageController,
                    children: [
                      OnBoarding1Screen(onClick: () {
                        final lastPage =
                            (_pageController.page ?? 0).toInt() + 2;
                        _pageController.animateToPage(
                          lastPage,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }),
                      OnBoarding2Screen(
                        onClick: () {
                          final lastPage =
                              (_pageController.page ?? 0).toInt() + 2;
                          _pageController.animateToPage(
                            lastPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                      ),
                      OnBoarding3Screen(
                        onClick: () => Get.offAllNamed(
                          AppRoutes.registration1Route,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            height: 48,
            bottom: Sizes.p32,
            right: Sizes.p24,
            left: Sizes.p24,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    _progress <= 1 ? AppColors.neutral800 : AppColors.yellow300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sizes.p6),
                ),
              ),
              child: DefaultTextStyle(
                style: Get.textTheme.bodyLarge!.copyWith(
                  color:
                      _progress <= 1 ? AppColors.white : AppColors.neutral800,
                  fontWeight: Fonts.interMedium,
                ),
                overflow: TextOverflow.fade,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Opacity(
                          opacity: _progress > 1 ? 0 : 1,
                          child: const Text(
                            'Next',
                          ),
                        ),
                        Opacity(
                          opacity: _progress > 1 ? 0 : 1,
                          child: const Text(
                            "Next",
                          ),
                        ),
                        Opacity(
                          opacity: _progress < 2 ? 0 : 1,
                          child: const Text(
                            "Sign Up",
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onPressed: () {
                final nextPage = (_pageController.page ?? 0).toInt() + 1;
                if (nextPage < 3) {
                  _pageController.animateToPage(
                    nextPage,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  Get.offAllNamed(
                    AppRoutes.registration1Route,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
