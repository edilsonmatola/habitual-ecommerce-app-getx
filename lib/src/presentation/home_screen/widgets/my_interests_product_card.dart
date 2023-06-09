import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class MyInterestsProductCard extends StatelessWidget {
  const MyInterestsProductCard({
    super.key,
    required this.name,
    required this.brand,
    required this.price,
    required this.imageUrl,
    this.onPressed,
  });

  final String name;
  final String imageUrl;
  final String brand;
  final double price;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.deviceWidth,
      height: Sizes.deviceHeight * .12,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: 80,
              height: 80,
            ),
            gapW16,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: Get.textTheme.displayMedium,
                    ),
                    Text(
                      brand,
                      style: Get.textTheme.titleMedium?.copyWith(
                        color: AppColors.neutral700,
                        fontWeight: Fonts.interRegular,
                      ),
                    ),
                    gapH4,
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: Get.textTheme.bodyMedium,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
