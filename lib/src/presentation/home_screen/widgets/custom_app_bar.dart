import 'package:flutter/material.dart';

import '../../../common_widgets/svg_asset.dart';
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
        const SvgAsset(
          assetPath: AppAssets.appLogoBlackSmall,
          width: Sizes.p24,
          height: Sizes.p24,
        ),
        IconButton(
          icon: SvgAsset(
            assetPath: iconButton,
            width: Sizes.p20,
            height: Sizes.p20,
            color: color ?? AppColors.neutral800,
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
