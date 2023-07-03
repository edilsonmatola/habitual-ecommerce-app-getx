import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.color,
  });

  final String title;
  final String imageUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(
        Sizes.p16,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Get.textTheme.displayLarge,
          ),
          gapH8,
          CachedNetworkImage(
            placeholder: (_, url) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            width: Sizes.deviceWidth,
            height: Sizes.deviceHeight * .15,
            imageUrl: imageUrl,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          gapH8,
          Align(
            alignment: Alignment.bottomRight,
            child: PrimaryOutlinedButton(
              hasText: false,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
