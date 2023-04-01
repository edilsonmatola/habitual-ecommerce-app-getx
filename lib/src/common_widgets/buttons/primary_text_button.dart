import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel,
    this.buttonColor,
    this.fontWeight,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? buttonColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonLabel,
        style: Get.textTheme.bodyMedium?.copyWith(
          color: buttonColor ?? AppColors.neutral600,
          fontWeight: fontWeight ?? AppFonts.interRegular,
        ),
      ),
    );
  }
}
