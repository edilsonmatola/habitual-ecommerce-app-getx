import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/home_screen/widgets/like_button_widget.dart';

import '../../../core/core_export.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    this.width,
    this.height,
    this.cardColor,
    this.onPressed,
    required this.imageUrl,
  });

  final double? width;
  final double? height;
  final Color? cardColor;
  final String imageUrl;
  final VoidCallback? onPressed;

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
              onTap: onPressed,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p10),
                child: Padding(
                  padding: const EdgeInsets.all(
                    Sizes.p16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gapH24,
                      Expanded(
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl: imageUrl,
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
                      ),
                      gapH12,
                      Text(
                        'Chuck 70 Hi Sneakers Chuck 70 Hi Sneakers',
                        style: Get.textTheme.displayLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.center,
                      ),
                      gapH4,
                      Text(
                        'Converse',
                        style: Get.textTheme.bodySmall?.copyWith(
                          fontWeight: Fonts.interRegular,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      gapH16,
                      Text(
                        r'$70.99',
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
