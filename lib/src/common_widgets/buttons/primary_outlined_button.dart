import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/svg_icon.dart';
import 'package:habitual/src/core/core_export.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    Key? key,
    this.onPressed,
    this.title,
    required this.hasText,
    this.width,
    this.height,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? title;
  final bool hasText;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (hasText) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          textStyle: Get.textTheme.bodyMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title!,
          style: Get.textTheme.bodyLarge,
        ),
      );
    } else {
      return SizedBox(
        width: width ?? 36,
        height: height ?? 36,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
          onPressed: onPressed,
          child: SvgIcon(
            icon: AppIcons.iOSRightArrowIcon,
            width: Sizes.p16,
            height: Sizes.p16,
            color: AppColors.neutral800,
          ),
        ),
      );
    }
  }
}
