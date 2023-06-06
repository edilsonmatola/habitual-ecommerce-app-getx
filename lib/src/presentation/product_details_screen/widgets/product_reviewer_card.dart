import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class ProductReviewerCard extends StatelessWidget {
  const ProductReviewerCard(
      {super.key, required this.title, required this.dateTime});

  final String title;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: Get.theme.textTheme.bodyLarge,
                ),
              ),
              Expanded(
                child: SvgPicture.asset(
                  AppIcons.starIcon,
                  width: Sizes.p16,
                  height: Sizes.p16,
                ),
              ),
            ],
          ),
          gapH8,
          Text(
            dateTime,
            style: Get.theme.textTheme.titleMedium?.copyWith(
              color: AppColors.neutral400,
              fontWeight: Fonts.interRegular,
            ),
          ), // January 1, 2023
          gapH8,
          Text(
            'Massa morbi id lorem ultricies. Aliquet eu dolor cras ipsum hendrerit id ut habitant nisi. Lectus ipsum faucibus sed fringilla at tempor.',
            style: Get.theme.textTheme.titleMedium?.copyWith(
              color: AppColors.neutral600,
              fontWeight: Fonts.interRegular,
            ),
          ),
          gapH8,
          Row(
            children: [
              const CircleAvatar(
                maxRadius: Sizes.p16,
                minRadius: Sizes.p16,
                backgroundImage: CachedNetworkImageProvider(
                  'https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
                ),
              ),
              gapW8,
              Text(
                'Brooklyn Simmons',
                style: Get.theme.textTheme.titleMedium?.copyWith(
                  color: AppColors.neutral600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
