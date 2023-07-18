import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/svg_asset.dart';

import '../../core/core_export.dart';

class SecondaryTextField extends StatelessWidget {
  const SecondaryTextField({
    super.key,
    required this.hintText,
    this.borderColor,
    this.startIcon = true,
  });

  final String hintText;
  final Color? borderColor;
  final bool startIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: startIcon
            ? const Padding(
                padding: EdgeInsets.all(
                  Sizes.p20,
                ),
                child: SvgAsset(
                  assetPath: AppIcons.searchIcon,
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: Get.textTheme.displaySmall?.copyWith(
          color: AppColors.neutral400,
          fontWeight: Fonts.interRegular,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(
            Sizes.p6,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(
            Sizes.p6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(
            Sizes.p6,
          ),
        ),
      ),
    );
  }
}
