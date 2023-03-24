import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';

import '../../../core/core_export.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.title,
    required this.onPressed,
  });

  final double? width;
  final double? height;
  final Color? color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 163,
          height: height ?? 163,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  AppDimensions.p10,
                ),
              ),
            ),
            color: color ?? AppColors.purple300,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppDimensions.p10),
              ),
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.p10),
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Get.textTheme.displayLarge,
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: AppDimensions.p24,
          bottom: AppDimensions.p16,
          child: OutlinedRoundedIconButton(
            icon: AppIcons.iOSRightArrowIcon,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
