import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';

class UserGoalCard extends StatelessWidget {
  const UserGoalCard({
    super.key,
    required this.text,
    required this.isSelected,
    this.onTap,
    // required this.cardColor,
    // required this.borderColor,
    // required this.textColor,
  });

  final String text;
  // final Color cardColor;
  // final Color borderColor;
  // final Color textColor;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: AppColors.neutral200.withOpacity(.50),
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        width: Sizes.deviceWidth * .90,
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.p16,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.transparent : AppColors.neutral800,
          // color: cardColor,
          border: Border.all(
            // color: borderColor,
            color: isSelected ? AppColors.neutral800 : AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          text,
          style: Get.textTheme.bodyMedium?.copyWith(
            // color: textColor,
            color: isSelected ? AppColors.neutral800 : AppColors.white,
            fontWeight: Fonts.interRegular,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
