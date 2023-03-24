import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/home_screen/widgets/like_button_widget.dart';

import '../../../core/core_export.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 163,
          height: height ?? 218,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppDimensions.p10),
              ),
            ),
            color: AppColors.neutral100,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppDimensions.p10),
              ),
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.p10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    AppDimensions.p12,
                    AppDimensions.p28,
                    AppDimensions.p12,
                    AppDimensions.p12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH12,
                      const Expanded(
                        child: Center(
                          child: Image(
                            image: CachedNetworkImageProvider(
                              'https://tech4u.co.mz/wp-content/uploads/2023/01/cq5dam.web_.1280.1280.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      gapH4,
                      Text(
                        'Bose Noise Cancellation',
                        style: Get.textTheme.displayMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.center,
                      ),
                      gapH4,
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.starIcon,
                            width: AppDimensions.p10,
                            height: AppDimensions.p10,
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
          top: AppDimensions.p4,
          right: AppDimensions.p12,
          child: LikeButtonWidget(
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
