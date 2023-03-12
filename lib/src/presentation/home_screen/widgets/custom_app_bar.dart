import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/core_export.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.iconButton,
    this.color,
  });

  final VoidCallback onPressed;
  final String iconButton;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppAssets.appLogoBlackSmall,
          width: 24,
          height: 24,
        ),
        IconButton(
          icon: SvgPicture.asset(
            iconButton,
            width: 20,
            height: 20,
            color: color ?? AppColors.neutral800,
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
