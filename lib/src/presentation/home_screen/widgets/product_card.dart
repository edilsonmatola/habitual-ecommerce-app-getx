import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_dimensions.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width,
    this.height,
    this.color,
    this.child,
  });

  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 206,
      height: height ?? 357,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? AppColors.blue300,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppDimensions.p16,
          horizontal: AppDimensions.p16,
        ),
        child: child,
      ),
    );
  }
}
