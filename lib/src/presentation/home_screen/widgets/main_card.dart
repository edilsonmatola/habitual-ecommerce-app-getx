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
    this.color,
  });

  final double? width;
  final double? height;
  final Color? color;

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
                Radius.circular(AppSizes.p10),
              ),
            ),
            color: color ?? AppColors.blue300,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSizes.p10),
              ),
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.p10),
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Image(
                          image: CachedNetworkImageProvider(
                            'https://res.cloudinary.com/dm1ikhi6x/image/upload/ar_1,c_pad/w_747,c_limit/q_auto:low,f_auto/products/MS03NzY3MDYyMjE2OTYwOjMzNjQ5MTY3MDQ',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                      gapH12,
                      Text(
                        'Chuck 70 Hi Sneakers',
                        style: Get.textTheme.displayLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.center,
                      ),
                      gapH4,
                      Text(
                        'Converse',
                        style: Get.textTheme.bodySmall?.copyWith(
                          fontWeight: AppFonts.interRegular,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      gapH16,
                      Text(
                        r'$12.99',
                        style: Get.textTheme.bodyLarge?.copyWith(
                          fontWeight: AppFonts.interRegular,
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
          top: AppSizes.p4,
          right: AppSizes.p16,
          child: LikeButtonWidget(
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
