import 'package:flutter/material.dart';

import '../core/constants/app_fonts.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel,
    this.color,
    this.buttonWidth = 342,
    this.buttonHeight = 48,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? color;
  final double? buttonWidth, buttonHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: AppFonts.interRegular,
              ),
        ),
      ),
    );
  }
}
