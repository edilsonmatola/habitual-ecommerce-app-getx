import 'package:flutter/material.dart';

import '../core/core_export.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: AppColors.neutral300,
          ),
        ),
      ],
    );
  }
}
