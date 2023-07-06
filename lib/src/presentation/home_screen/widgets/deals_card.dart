import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/svg_icon.dart';
import 'package:habitual/src/data/models/item_model.dart';
import 'package:habitual/src/presentation/home_screen/widgets/like_button_widget.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../../core/core_export.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({
    super.key,
    this.width,
    this.height,
    this.onLikeTap,
    required this.item,
  });

  final ItemModel item;

  final double? width;
  final double? height;
  final VoidCallback? onLikeTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 163,
          height: height ?? 300,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
            ),
            color: AppColors.neutral100,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
              onTap: () => Get.toNamed(AppRoutes.productDetailsRoute, arguments: item,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  Sizes.p10,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Sizes.p12,
                    Sizes.p28,
                    Sizes.p12,
                    Sizes.p12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.images[0],
                        height: Sizes.deviceHeight * .25 / 2,
                        placeholder: (_, url) => Center(
                          child: CircularProgressIndicator.adaptive(
                            valueColor: AlwaysStoppedAnimation(
                              AppColors.neutral800,
                            ),
                          ),
                        ),
                      ),
                      gapH4,
                      Text(
                        item.itemName,
                        style: Get.textTheme.displayMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      gapH4,
                      Row(
                        children: [
                          const SvgIcon(
                            icon: AppIcons.starIcon,
                            width: Sizes.p10,
                            height: Sizes.p10,
                          ),
                          gapW4,
                          Text(
                            '4.25',
                            style: Get.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      gapH8,
                      Text(
                        '\$${item.prices[0]}',
                        style: Get.textTheme.bodyMedium?.copyWith(
                          color: AppColors.neutral600,
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
            onPressed: onLikeTap,
          ),
        ),
      ],
    );
  }
}
