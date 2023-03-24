import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

class OutlinedRoundedIconButton extends StatelessWidget {
  const OutlinedRoundedIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.p10),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.neutral800,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Ink(
          child: SvgPicture.asset(
            icon,
            width: AppDimensions.p16,
            height: AppDimensions.p16,
            color: AppColors.neutral800,
          ),
        ),
      ),
    );
  }
}
