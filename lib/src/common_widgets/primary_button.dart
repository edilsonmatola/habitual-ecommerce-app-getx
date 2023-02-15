import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.buttonLabel,
    this.color,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonLabel,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
