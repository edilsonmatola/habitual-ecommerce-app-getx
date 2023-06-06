import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class RatingLong extends StatelessWidget {
  const RatingLong({Key? key, required this.value}) : super(key: key);
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 1; i <= 5; i++)
          Icon(
            (i <= value)
                ? Icons.star_rounded
                : (i <= value + 0.5)
                    ? Icons.star_half_rounded
                    : Icons.star_border_rounded,
            color: AppColors.neutral800,
            size: Sizes.p16,
          ),
        gapW4,
        Text(
          value.toStringAsFixed(1),
          style: Get.theme.textTheme.bodySmall,
        ),
        gapW4,
        Text(
          '12 Reviews',
          style: Get.theme.textTheme.bodySmall?.copyWith(
            color: AppColors.neutral400,
          ),
        )
      ],
    );
  }
}
