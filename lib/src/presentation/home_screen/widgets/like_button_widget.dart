import 'package:flutter/material.dart';
import 'package:habitual/src/common_widgets/svg_icon.dart';
import 'package:habitual/src/core/core_export.dart';

class LikeButtonWidget extends StatelessWidget {
  const LikeButtonWidget({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.onPressed,
  });

  final double? width;
  final double? height;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgIcon(
        icon: AppIcons.favoriteIcon,
        width: width ?? Sizes.p20,
        height: height ?? Sizes.p20,
        color: color ?? AppColors.neutral800,
      ),
    );
  }
}
