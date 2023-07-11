import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

import '../../../common_widgets/svg_asset.dart';

class UserInterestCategoryCard extends StatelessWidget {
  const UserInterestCategoryCard({
    super.key,
    required this.isSelected,
    required this.color,
    required this.category,
    required this.imageUrl,
    this.onTap,
  });

  final bool isSelected;
  final Color color;
  final String category;
  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p16,
        vertical: Sizes.p24,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
      ),
      child: Column(
        children: [
          CachedNetworkImage(
            placeholder: (_, url) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            width: Sizes.deviceWidth * .6,
            height: Sizes.deviceHeight * .65 / 2,
            imageUrl: imageUrl,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          gapH8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: Get.textTheme.displayLarge,
              ),
              gapW32,
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  textStyle: Get.textTheme.bodyMedium,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.p6),
                  ),
                ),
                onPressed: onTap,
                child: isSelected
                    ? SvgAsset(
                        assetPath: AppIcons.checkIcon,
                        width: Sizes.p24,
                        height: Sizes.p24,
                        color: AppColors.neutral800,
                      )
                    : Text(
                        'Add',
                        style: Get.textTheme.bodyLarge,
                      ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
