import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/data/models/item_model.dart';
import 'package:habitual/src/presentation/home_screen/widgets/like_button_widget.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../../core/core_export.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    this.width,
    this.height,
    this.cardColor,
    required this.item,
  });

  final ItemModel item;

  final double? width;
  final double? height;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 206,
          height: height ?? 357,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
            ),
            color: cardColor ?? AppColors.blue300,
            child: InkWell(
              highlightColor: AppColors.neutral300.withOpacity(.9),
              borderRadius: const BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
              onTap: () => Get.toNamed(
                AppRoutes.productDetailsRoute,
                arguments: item,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p10),
                child: Padding(
                  padding: const EdgeInsets.all(
                    Sizes.p16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: item.images[0],
                          fit: BoxFit.contain,
                          placeholder: (_, url) => Center(
                            child: CircularProgressIndicator.adaptive(
                              valueColor: AlwaysStoppedAnimation(
                                AppColors.neutral800,
                              ),
                            ),
                          ),
                        ),
                      ),
                      gapH12,
                      Text(
                        item.itemName,
                        style: Get.textTheme.displayLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.center,
                      ),
                      gapH4,
                      Text(
                        item.brand,
                        style: Get.textTheme.bodySmall?.copyWith(
                          fontWeight: Fonts.interRegular,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      gapH16,
                      Text(
                        '\$${item.prices[0]}',
                        style: Get.textTheme.bodyLarge?.copyWith(
                          fontWeight: Fonts.interRegular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: Sizes.p4,
          right: Sizes.p16,
          child: LikeButtonWidget(
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
