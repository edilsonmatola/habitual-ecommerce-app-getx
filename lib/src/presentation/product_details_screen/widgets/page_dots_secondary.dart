import 'package:flutter/material.dart';

import '../../../core/core_export.dart';

class PageDotsSecondary extends StatelessWidget {
  const PageDotsSecondary({
    super.key,
    required this.currentIndex,
    required this.countLength,
  });

  final int currentIndex;
  final int countLength;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        countLength,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 135),
          height: 6,
          width: currentIndex == index ? 20 : 6,
          margin: const EdgeInsets.only(
            right: Sizes.p4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Sizes.p8,
            ),
            color: currentIndex == index
                ? AppColors.neutral800
                : AppColors.neutral600.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
