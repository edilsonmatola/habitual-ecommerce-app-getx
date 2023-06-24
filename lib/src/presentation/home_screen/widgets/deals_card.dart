import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/svg_icon.dart';
import 'package:habitual/src/presentation/home_screen/widgets/like_button_widget.dart';

import '../../../core/core_export.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({
    super.key,
    this.width,
    this.height,
    this.onLikeTap,
    this.onCardTap,
  });

  final double? width;
  final double? height;
  final VoidCallback? onLikeTap;
  final VoidCallback? onCardTap;

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
              onTap: onCardTap,
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
                        imageUrl:
                            'https://tech4u.co.mz/wp-content/uploads/2023/01/cq5dam.web_.1280.1280.png',
                        height: 115,
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
                        'Bose Noise Cancellation',
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
                        r'$400.99',
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
