import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/custom_divider.dart';
import '../../../core/core_export.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Sizes.p10),
      onTap: onTap,
      child: Container(
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
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p16,
                vertical: Sizes.p8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      placeholder: (_, url) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      imageUrl:
                          'https://cdn-reichelt.de/bilder/web/xxl_ws/E910/SONY_9399506_02.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  gapW16,
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'order total',
                          style: Get.textTheme.bodySmall?.copyWith(
                            color: AppColors.neutral400,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        gapH4,
                        Text(
                          '\$82.19',
                          style: Get.textTheme.bodyMedium?.copyWith(
                            fontWeight: Fonts.interMedium,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        gapH12,
                        Text(
                          'Arriving today',
                          style: Get.textTheme.bodySmall?.copyWith(
                            color: AppColors.organge300,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomDivider(
              dividerColor: AppColors.neutral400,
            ),
            Container(
              height: 128,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Sizes.p10),
                  bottomRight: Radius.circular(Sizes.p10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(
                    'assets/images/order_screen/package-tracker.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
