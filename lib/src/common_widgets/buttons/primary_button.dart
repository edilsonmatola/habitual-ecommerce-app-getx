import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/svg_asset.dart';

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
    this.forwardIcon = false,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? buttonColor, labelColor;
  final double? buttonWidth, buttonHeight;
  final bool? forwardIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? 342,
      height: buttonHeight ?? 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(Sizes.p2),
          backgroundColor: buttonColor ?? AppColors.yellow300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
        ),
        onPressed: onPressed,
        child: forwardIcon!
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    buttonLabel,
                    style: Get.textTheme.bodyLarge?.copyWith(
                      color: labelColor ?? AppColors.white,
                      fontWeight: Fonts.interMedium,
                    ),
                  ),
                  gapW8,
                  SvgAsset(
                    assetPath: AppIcons.rightArrowIcon,
                    color: AppColors.white,
                    width: Sizes.p20,
                    height: Sizes.p20,
                  ),
                ],
              )
            : Text(
                buttonLabel,
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: labelColor ?? AppColors.white,
                  fontWeight: Fonts.interMedium,
                ),
              ),
      ),
    );
  }
}
