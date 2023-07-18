import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/svg_asset.dart';
import '../../../core/core_export.dart';

class EditInterestTile extends StatelessWidget {
  const EditInterestTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
  });

  final VoidCallback? onTap;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: isSelected ? AppColors.yellow300 : AppColors.neutral800,
          ),
          backgroundColor: isSelected ? AppColors.yellow300 : null,
          textStyle: Get.textTheme.bodyMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p6),
          ),
        ),
        onPressed: onTap,
        child: isSelected
            ? SvgAsset(
                assetPath: AppIcons.checkIcon,
                width: Sizes.p24,
                height: Sizes.p24,
                color: AppColors.neutral800,
              )
            : Text(
                'Add',
                style: Get.textTheme.bodyLarge,
              ),
      ),
      title: Text(
        title,
        style: Get.textTheme.bodyMedium?.copyWith(
          fontWeight: Fonts.interRegular,
        ),
      ),
    );
  }
}


/* 

  OutlinedButton(
                style: OutlinedButton.styleFrom(
                  textStyle: Get.textTheme.bodyMedium,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.p6),
                  ),
                ),
                onPressed: onTap,
                child: isSelected
                    ? SvgAsset(
                        assetPath: AppIcons.checkIcon,
                        width: Sizes.p24,
                        height: Sizes.p24,
                        color: AppColors.neutral800,
                      )
                    : Text(
                        'Add',
                        style: Get.textTheme.bodyLarge,
                      ),
              ),

 */