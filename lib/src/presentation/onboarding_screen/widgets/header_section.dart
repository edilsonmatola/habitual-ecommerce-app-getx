import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_widgets/primary_text_button.dart';
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
          width: 24,
          height: 24,
        ),
        PrimaryTextButton(
          buttonLabel: buttonLabel ?? 'Skip',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
