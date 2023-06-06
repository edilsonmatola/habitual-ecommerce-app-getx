import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/option_card.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/product_reviewer_card.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/rating_long.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) =>
              SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(animation),
            child: child,
          ),
          child: Container(
            key: const ValueKey<int>(0),
            padding: const EdgeInsets.fromLTRB(
              Sizes.p24,
              Sizes.p4,
              Sizes.p24,
              0,
            ),
            decoration: BoxDecoration(
              color: AppColors.yellow300,
            ),
            height: Sizes.deviceHeight * .12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'With your options',
                      style: Get.theme.textTheme.titleLarge,
                    ),
                    gapH4,

                    /// PRICE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /// SELLING PRICE
                            Text(
                              '\$79.99',
                              style: Get.theme.textTheme.titleSmall,
                            ),
                            // SizedBox(
                            //   width: 8.w,
                            // ),

                            /// ACTUAL PRICE
                            // if (product.discount != 0)
                            //   Text(
                            //     "\$${product.actualPrice.toStringAsFixed(2)}",
                            //     style: AppTextStyles.strikeSmall.copyWith(
                            //       color:
                            //           AppColors.textGray_80.withOpacity(0.75),
                            //       fontWeight: FontWeight.w700,
                            //     ),
                            //   ),
                          ],
                        ),
                        gapW24,
                        PrimaryButton(
                          buttonWidth: 216,
                          buttonHeight: 50,
                          buttonColor: AppColors.neutral800,
                          buttonLabel: 'Add to cart',
                          onPressed: () {},
                        )
                        // SizedBox(
                        //   width: 8.w,
                        // ),

                        ///* DISCOUNT
                        // if (product.discount != 0)
                        //   DiscountPillSecondary(
                        //     discountPercentage: product.discount,
                        //   ),
                      ],
                    ),
                  ],
                ),
                // CircleAvatar(
                //   radius: 24.r,
                //   backgroundColor: AppColors.bgWhite,
                //   child: IconButton(
                //     color: AppColors.uiGray_80,
                //     padding: const EdgeInsets.all(0),
                //     iconSize: 24.r,
                //     icon: const Icon(
                //       Icons.arrow_forward_rounded,
                //       color: AppColors.uiGray_80,
                //     ),
                //     onPressed: () {
                //       bool status = cartController.addProductToCart(product);
                //       if (status) productController.isProductInCart = true;
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: AppColors.blue300,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: Sizes.p24,
                  ),
                  child: PrimaryIconButton(
                    icon: AppIcons.shoppingCartIcon,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
          body: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  //* Product Image
                  Container(
                    height: Sizes.deviceHeight * .50,
                    color: AppColors.blue300,
                    child: PageView.builder(
                      itemCount: 6,
                      itemBuilder: (_, index) => Container(
                        color: AppColors.blue300,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://scufgaming.com/media/prismic/ODMwZTBlYzgtMDYzZi00ZGNmLWE3MTctNjZjMDUyMjA2YjRm_7a716d11-edb0-4a68-83a1-cdefacd9b8a5_reflex_compare_model_base_black_front_850x600.png',
                          placeholder: (_, url) => const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      Sizes.p24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DualSense Wireless Controller',
                          style: Get.theme.textTheme.headlineMedium,
                        ),
                        gapH8,
                        Text(
                          'Sony',
                          style: Get.theme.textTheme.titleLarge?.copyWith(
                            color: AppColors.neutral600,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        gapH8,
                        const RatingLong(
                          value: 4.25,
                        ),
                        gapH24,
                        Text(
                          'Options',
                          style: Get.theme.textTheme.titleLarge,
                        ),
                        gapH8,
                        //* Available Colors
                        SizedBox(
                          height: Sizes.deviceHeight * .18,
                          child: ListView.separated(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (_, index) => gapW16,
                            itemBuilder: (_, index) => OptionCard(
                              isActive: true,
                              inStock: true,
                              price: 79.99,
                              colorName: 'Black',
                              onTap: () {},
                            ),
                          ),
                        ),
                        gapH32,
                        Text(
                          'Description',
                          style: Get.theme.textTheme.displayLarge,
                        ),
                        gapH12,
                        Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation ven',
                          style: Get.theme.textTheme.displaySmall?.copyWith(
                            color: AppColors.neutral600,
                            fontWeight: Fonts.interRegular,
                          ),
                        ),
                        gapH32,
                        Text(
                          'Reviews',
                          style: Get.theme.textTheme.displayLarge,
                        ),
                        gapH24,
                        const ProductReviewerCard(
                          title: 'Consectetur tellus volutpat.',
                          dateTime: 'January 1, 2023',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
