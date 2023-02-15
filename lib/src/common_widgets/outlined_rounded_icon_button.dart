import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutlinedRoundedIconButton extends StatelessWidget {
  const OutlinedRoundedIconButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel, required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      label: Text(''),
      icon: SvgPicture.asset(icon),
    );
  }
}
