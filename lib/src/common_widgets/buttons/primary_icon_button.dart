import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitual/src/core/core_export.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    super.key,
    required this.icon,
    this.onPressed, this.color,
  });

  final String icon;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: AppColors.neutral300,
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        width: Sizes.p20,
        height: Sizes.p20,
        color: color ?? AppColors.neutral800,
      ),
    );
  }
}
