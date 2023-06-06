import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/rating_long.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                //* Product Image
                Container(
                  margin: const EdgeInsets.only(bottom: Sizes.p24),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DualSense Wireless Controller',
                        style: Get.theme.textTheme.headlineLarge,
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
                        value: 3.9,
                      ),
                      gapH24,
                      Text(
                        'Options',
                        style: Get.theme.textTheme.titleLarge,
                      ),
                      gapH8,
                      //* Available Colors
                      Row(
                        children: [
                          SizedBox(
                            width: 165,
                            height: 110,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  Sizes.p10,
                                ),
                              ),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(
                                  Sizes.p10,
                                ),
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(Sizes.p12),
                                  child: Text(
                                    'Black',
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      gapH32,
                    ],
                  ),
                ),
              ],
            ),
          ),
          // slivers: [
          //   SliverFillRemaining(
          //     hasScrollBody: false,
          //     child: Column(
          //       children: [
          //         Container(
          //           height: Sizes.deviceHeight * .90,
          //           color: AppColors.blue100,
          //           child: Stack(
          //             alignment: Alignment.center,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.symmetric(
          //                   horizontal: Sizes.p24,
          //                 ),
          //                 child: Column(
          //                   children: [
          //                     SizedBox(
          //                       height: Sizes.deviceHeight * 50,
          //                     ),
          //                     Row(
          //                       mainAxisAlignment: MainAxisAlignment.end,
          //                       children: [
          //                         PrimaryIconButton(
          //                           icon: AppIcons.leftArrowIcon,
          //                           onPressed: () => Get.back(),
          //                         ),
          //                         // GestureDetector(
          //                         //   onTap: () {
          //                         //     Get.back();
          //                         //     Navigator.of(context).pop();
          //                         //     Get.back();
          //                         //   },
          //                         //   child: IconButton(
          //                         //     onPressed: () {
          //                         //       Get.back();
          //                         //       Navigator.of(context).pop();
          //                         //       Get.back();
          //                         //     },
          //                         //     icon: const Icon(
          //                         //       Icons.arrow_back,
          //                         //       color: AppColors.uiGray_80,
          //                         //     ),
          //                         //   ),
          //                         // ),
          //                         SvgPicture.asset(
          //                           AppIcons.shoppingCartIcon,
          //                           width: Sizes.p20,
          //                           height: Sizes.p20,
          //                         ),
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               ),
          //               PageView.builder(
          //                 onPageChanged: (value) {
          //                   // productController.currentPage = value;
          //                 },
          //                 itemCount: 3,
          //                 itemBuilder: (context, index) => Container(
          //                   color: AppColors.green300,
          //                 ),
          //                 // itemBuilder: (_, index) => product.image != null
          //                 //     ? Image.network(product.image!)
          //                 //     : Icon(
          //                 //         Icons.image,
          //                 //         color: AppColors.uiGray_40,
          //                 //         size: 50.r,
          //                 //       ),
          //               ),
          //               // Positioned(
          //               //   bottom: 24.h,
          //               //   child: PageDotsSecondary(
          //               //     controller: productController,
          //               //     count: 3,
          //               //   ),
          //               // )
          //             ],
          //           ),
          //         ),
          //         Stack(
          //           children: [
          //             Container(
          //               height: Sizes.deviceHeight * .10,
          //               color: AppColors.blue100,
          //             ),
          //             Container(
          //               width: double.infinity,
          //               alignment: Alignment.topLeft,
          //               decoration: BoxDecoration(
          //                 borderRadius: const BorderRadius.only(
          //                   topRight: Radius.circular(Sizes.p16),
          //                   topLeft: Radius.circular(Sizes.p16),
          //                 ),
          //                 color: AppColors.white,
          //               ),
          //               child: Padding(
          //                 padding: const EdgeInsets.all(Sizes.p24),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       'product.name',
          //                       style: Get.theme.textTheme.headlineLarge,
          //                     ),
          //                     gapH8,
          //                     // RatingLong(value: product.rating ?? 0),
          //                     // SizedBox(
          //                     //   height: 32.h,
          //                     // ),
          //                     Text(
          //                       "DESCRIÇÃO",
          //                       style: Get.theme.textTheme.displayLarge,
          //                     ),

          //                     gapH16,
          //                     Text(
          //                       'product.description',
          //                       style: Get.theme.textTheme.bodyLarge?.copyWith(
          //                         fontWeight: FontWeight.w400,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
