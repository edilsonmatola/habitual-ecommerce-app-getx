import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

import '../../common_widgets/common_widgets_export.dart';

class WishlistTabScreen extends StatefulWidget {
  const WishlistTabScreen({super.key});

  @override
  State<WishlistTabScreen> createState() => _WishlistTabScreenState();
}

class _WishlistTabScreenState extends State<WishlistTabScreen> {
  final deviceWidth = Get.size.width;
  final deviceHeight = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // padding: ,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(
                AppSizes.p32,
              ),
              width: 341,
              height: 394,
              decoration: BoxDecoration(
                color: AppColors.purple300,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.purple300,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: AppShadows.cardShadowLarge,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    SvgPicture.asset(
                      'assets/images/wishlist_screen/products-empty.svg',
                      height: 64,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "You have no saved products",
                      // style: AppTextStyles.h4.copyWith(
                      //   fontWeight: FontWeight.w800,
                      //   color: AppColors.textGray_80,
                      // ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "You have no saved products. Start saving to add to wishlists or create one.",
                      textAlign: TextAlign.center,
                      // style: AppTextStyles.bodyRegular.copyWith(
                      //   fontWeight: FontWeight.w400,
                      //   color: AppColors.textGray_60,
                      // ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryButton(
                      buttonLabel: "Create a wishlist",
                      onPressed: () {},
                      // iconLeft: Icons.add,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
