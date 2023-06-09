import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel,
    this.buttonColor,
    this.buttonWidth,
    this.buttonHeight,
    this.labelColor,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? buttonColor, labelColor;
  final double? buttonWidth, buttonHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? 342,
      height: buttonHeight ?? 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.yellow300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: Get.textTheme.bodyLarge?.copyWith(
            color: labelColor ?? AppColors.neutral800,
            fontWeight: Fonts.interMedium,
          ),
        ),
      ),
    );
  }
}
