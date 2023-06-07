import 'package:flutter/material.dart';

import '../../../core/core_export.dart';

class PageDotsSecondary extends StatelessWidget {
  const PageDotsSecondary({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 135),
          height: 6,
          width: controller.initialPage == index ? 20 : 6,
          margin: const EdgeInsets.only(
            right: Sizes.p4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Sizes.p8,
            ),
            color: controller.initialPage == index
                ? AppColors.neutral800
                : AppColors.neutral600.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
