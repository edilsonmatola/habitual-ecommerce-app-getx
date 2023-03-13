import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants_export.dart';
import 'like_button_widget.dart';

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
    return Stack(
      children: [
        Card(
          elevation: 1,
          shadowColor: AppColors.blue300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // * Product Image
                  Expanded(
                    child: Hero(
                      tag: 'Image',
                      child: SvgPicture.asset(
                        AppAssets.paralaxImage1,
                        width: 175,
                        height: 225,
                        key: UniqueKey(),
                      ),
                    ),
                  ),
                  gapH12,
                  // * Product Name
                  Text(
                    'The Metamorphosis',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  gapH4,
                  Text(
                    'Franz Kafka',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  gapH16,
                  Text(r'?$12.99'),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: LikeButtonWidget(
            onPressed: () {},
          ),
        ),
      ],
    );
    // return Stack(
    //   children: [
    //     Material(
    //       child: Container(
    //         width: width ?? 206,
    //         height: height ?? 357,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(10),
    //           color: color ?? AppColors.blue300,
    //         ),
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(
    //             vertical: AppDimensions.p16,
    //             horizontal: AppDimensions.p16,
    //           ),
    //           child: child,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
