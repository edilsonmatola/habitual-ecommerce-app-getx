import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    Key? key,
    this.onPressed,
    this.title,
    required this.isText,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? title;
  final bool isText;

  @override
  Widget build(BuildContext context) {
    if (isText) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          textStyle: Get.textTheme.bodyMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.p6),
          ),
        ),
        onPressed: onPressed,
        child: Text(title!),
      );
    } else {
      return SizedBox(
        width: 36,
        height: 36,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: onPressed,
          child: SvgPicture.asset(
            AppIcons.iOSRightArrowIcon,
            width: AppSizes.p16,
            height: AppSizes.p16,
            color: AppColors.neutral800,
          ),
        ),
      );
    }
  }
}
