import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      icon: SvgPicture.asset(
        AppIcons.favoriteIcon,
        width: width ?? Sizes.p20,
        height: height ?? Sizes.p20,
        color: color ?? AppColors.neutral800,
      ),
    );
  }
}
