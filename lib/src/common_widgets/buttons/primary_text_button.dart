import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel,
    this.textColor,
    this.fontWeight,
    this.defaultTextStyle = false,
    this.style,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final bool defaultTextStyle;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    if (defaultTextStyle) {
      return TextButton(
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: Get.textTheme.bodyMedium?.copyWith(
            color: textColor ?? AppColors.neutral600,
            fontWeight: fontWeight ?? Fonts.interRegular,
          ),
        ),
      );
    } else {
      return TextButton(
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: style,
        ),
      );
    }
  }
}
