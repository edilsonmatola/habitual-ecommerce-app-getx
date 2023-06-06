import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.isActive,
    required this.onTap,
    required this.price,
    required this.inStock,
    required this.colorName,
  }) : super(key: key);

  final bool isActive;
  final bool inStock;
  final VoidCallback? onTap;
  final String colorName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.deviceWidth * .35,
      height: Sizes.deviceHeight * .15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.p10),
        border: Border.all(
          color: isActive ? AppColors.yellow300 : AppColors.neutral600,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(Sizes.p12),
                height: 42,
                decoration: BoxDecoration(
                  color: isActive ? AppColors.yellow100 : Colors.transparent,
                ),
                child: Text(
                  colorName,
                  style: Get.theme.textTheme.titleLarge,
                  // Get.theme.textTheme.bodyMedium (Color)
                ),
              ),
              gapH12,
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  Sizes.p12,
                  0,
                  Sizes.p12,
                  Sizes.p12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: Get.theme.textTheme.bodyLarge,
                    ),
                    gapH4,
                    Text(
                      inStock ? 'In Stock' : 'Out of Stock',
                      style: inStock
                          ? Get.theme.textTheme.titleMedium?.copyWith(
                              color: AppColors.green700,
                            )
                          : Get.theme.textTheme.titleMedium?.copyWith(
                              color: AppColors.red500,
                            ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
