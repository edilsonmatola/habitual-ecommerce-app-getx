import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habitual/src/core/core_export.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({super.key, required this.icon, required this.onPressed});

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        width: AppDimensions.p20,
        height: AppDimensions.p20,
      ),
    );
  }
}
