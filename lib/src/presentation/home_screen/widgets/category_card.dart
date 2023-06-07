import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';

import '../../../core/core_export.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    this.width,
    this.height,
    this.color,
    required this.title,
    required this.buttonPressed,
    required this.cardPressed,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? color;
  final String title;
  final VoidCallback buttonPressed;
  final VoidCallback cardPressed;

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
                  Sizes.p10,
                ),
              ),
            ),
            color: color ?? AppColors.purple300,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
              onTap: cardPressed,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p10),
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.p16),
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
          right: Sizes.p24,
          bottom: Sizes.p16,
          child: PrimaryOutlinedButton(
            hasText: false,
            onPressed: buttonPressed,
          ),
        ),
      ],
    );
  }
}
