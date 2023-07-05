import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.borderColor, required this.cardColor, required this.textColor, required this.categoryName});

  final Color borderColor;
  final Color cardColor;
  final Color textColor;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: cardColor,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.all(
        Sizes.p16,
      ),
      child: Text(
        categoryName,
        style: Get.textTheme.bodyMedium?.copyWith(
          color: textColor,
          fontWeight: Fonts.interMedium,
        ),
      ),
    );
  }
}
