import 'package:flutter/material.dart';
import 'package:habitual/src/common_widgets/svg_asset.dart';

import '../../../common_widgets/buttons/primary_text_button.dart';
import '../../../core/core_export.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.onPressed,
    this.buttonLabel,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String? buttonLabel;

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
        PrimaryTextButton(
          buttonLabel: buttonLabel ?? 'Skip',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
