import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_fonts.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class UserGoalCard extends StatelessWidget {
  const UserGoalCard({
    super.key,
    required this.text,
    required this.isSelected,
    this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Sizes.deviceWidth * .90,
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.p16,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.neutral800 : AppColors.neutral300,
          ),
          color: isSelected ? Colors.transparent : AppColors.neutral800,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          text,
          style: Get.textTheme.bodyMedium?.copyWith(
            color: isSelected ? AppColors.neutral800 : AppColors.white,
            fontWeight: Fonts.interRegular,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
