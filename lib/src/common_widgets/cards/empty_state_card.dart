import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';
import '../common_widgets_export.dart';

class EmptyStateCard extends StatelessWidget {
  const EmptyStateCard({
    super.key,
    required this.buttonPressed,
    required this.cardTitle,
    required this.buttonText,
    this.cardDescription,
    this.cardColor,
    required this.cardImage,
    this.hasDescription = true,
    this.cardDescriptionColor,
  });

  final VoidCallback buttonPressed;
  final String cardTitle;
  final String buttonText;
  final String? cardDescription;
  final Color? cardColor;
  final Color? cardDescriptionColor;
  final String cardImage;
  final bool hasDescription;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.size.width;
    return Container(
      width: deviceWidth * .50,
      padding: const EdgeInsets.all(
        AppSizes.p32,
      ),
      decoration: BoxDecoration(
        color: cardColor ?? AppColors.purple300,
        borderRadius: BorderRadius.circular(
          AppSizes.p10,
        ),
        // boxShadow: AppShadows.cardShadowLarge,
      ),
      child: Column(
        children: hasDescription
            ? [
                SvgPicture.asset(
                  cardImage,
                  width: 145,
                  height: 145,
                ),
                gapH24,
                Text(
                  cardTitle,
                  style: Get.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                gapH8,
                Text(
                  cardDescription!,
                  style: Get.textTheme.titleLarge?.copyWith(
                    color: cardDescriptionColor ?? AppColors.neutral700,
                  ),
                  textAlign: TextAlign.center,
                ),
                gapH16,
                PrimaryButton(
                  buttonColor: AppColors.white,
                  labelColor: AppColors.neutral800,
                  buttonLabel: buttonText,
                  onPressed: buttonPressed,
                  // iconLeft: Icons.add,
                ),
              ]
            : [
                SvgPicture.asset(
                  cardImage,
                  width: 145,
                  height: 145,
                ),
                gapH24,
                Text(
                  cardTitle,
                  style: Get.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                gapH16,
                PrimaryButton(
                  buttonColor: AppColors.white,
                  labelColor: AppColors.neutral800,
                  buttonLabel: buttonText,
                  onPressed: buttonPressed,
                  // iconLeft: Icons.add,
                ),
              ],
      ),
    );
  }
}
