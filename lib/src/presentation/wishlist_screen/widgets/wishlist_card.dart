import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/custom_divider.dart';
import 'package:habitual/src/common_widgets/svg_asset.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_fonts.dart';
import 'package:habitual/src/core/constants/app_icons.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({
    super.key,
    required this.listName,
    required this.imageUrl,
    required this.itemName,
    required this.price,
  });

  final String listName;
  final String imageUrl;
  final String itemName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.neutral400,
        ),
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  listName,
                  style: Get.textTheme.displayLarge,
                ),
                IconButton(
                  icon: SvgAsset(
                    assetPath: AppIcons.moreOptionsIcon,
                    color: AppColors.neutral400,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          CustomDivider(
            dividerColor: AppColors.neutral400,
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.p8),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      placeholder: (_, url) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      imageUrl: imageUrl,
                      width: 80,
                      height: 80,
                    ),
                  ),
                  gapW16,
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              itemName,
                              style: Get.textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Icon(
                              Icons.favorite,
                              color: AppColors.red500,
                            ),
                          ],
                        ),
                        gapH8,
                        Text(
                          '\$${price.toStringAsFixed(2)}',
                          style: Get.textTheme.bodyMedium?.copyWith(
                            fontWeight: Fonts.interMedium,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        gapH8,
                        PrimaryButton(
                          labelColor: AppColors.neutral800,
                          buttonLabel: 'Add to cart',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          gapH16,
        ],
      ),
    );
  }
}
