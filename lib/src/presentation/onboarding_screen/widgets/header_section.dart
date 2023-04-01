import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_widgets/buttons/primary_text_button.dart';
import '../../../core/core_export.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.onPressed,
    this.buttonLabel,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppAssets.appLogoBlackSmall,
          width: AppSizes.p24,
          height: AppSizes.p24,
        ),
        PrimaryTextButton(
          buttonLabel: buttonLabel ?? 'Skip',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
