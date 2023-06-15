import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/core_export.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.hasText,
    this.text,
  }) : super(key: key);

  final bool hasText;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: hasText
          ? [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: AppColors.neutral300,
                ),
              ),
              gapW16,
              Text(
                text!,
                style: Get.textTheme.bodySmall?.copyWith(
                  color: AppColors.neutral400,
                ),
              ),
              gapW16,
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: AppColors.neutral300,
                ),
              ),
            ]
          : [
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
