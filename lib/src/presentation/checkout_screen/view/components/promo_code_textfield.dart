import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class PromoCodeTextField extends StatelessWidget {
  const PromoCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Promo code',
          hintStyle: Get.textTheme.displaySmall?.copyWith(
            color: AppColors.neutral400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.neutral300,
            ),
            borderRadius: BorderRadius.circular(
              Sizes.p6,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.neutral300,
            ),
            borderRadius: BorderRadius.circular(
              Sizes.p6,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.neutral300,
            ),
            borderRadius: BorderRadius.circular(
              Sizes.p6,
            ),
          )),
    );
  }
}
