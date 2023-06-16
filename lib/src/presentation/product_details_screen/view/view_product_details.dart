import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/custom_divider.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/option_card.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/page_dots_secondary.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/product_reviewer_card.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/rating_long.dart';
import 'package:habitual/src/presentation/product_details_screen/widgets/text_cropping_widget.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../cart_screen/widgets/cart_product_card.dart';
import '../../home_screen/widgets/main_card.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final currentIndex = 0.obs;

  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final itemCount = 10.obs;
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
              0,
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
                      style: Get.textTheme.titleLarge,
                    ),
                    gapH4,
                    // PRICE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //* SELLING PRICE
                            Text(
                              '\$79.99',
                              style: Get.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // TODO: isProductDiscount?
                            // gapW8,
                            // Text(
                            //   "\$99.99",
                            //   style: Get.textTheme.bodyMedium?.copyWith(
                            //     color: AppColors.neutral600,
                            //     fontWeight: Fonts.interRegular,
                            //     decoration: TextDecoration.lineThrough,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                gapW24,
                PrimaryButton(
                  buttonWidth: 150,
                  buttonHeight: 50,
                  buttonColor: AppColors.neutral800,
                  buttonLabel: 'Add to cart',
                  onPressed: () => showModalBottomSheet<void>(
                    // isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: true, isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Sizes.p16),
                        topRight: Radius.circular(Sizes.p16),
                      ),
                    ),
                    backgroundColor: AppColors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        expand: false,
                        maxChildSize: 1,
                        initialChildSize: itemCount <= 3 ? .4 : .75,
                        minChildSize: itemCount >= 3 ? .3 : .4,
                        builder: (context, scrollController) => Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.p24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: Sizes.p24,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        IconButton(
                                          onPressed: () => Get.back(),
                                          icon: const Icon(
                                            Icons.close,
                                          ),
                                          color: AppColors.neutral800,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Cart',
                                      style: Get.textTheme.displayLarge,
                                    )
                                  ],
                                ),
                              ),
                              const CustomDivider(
                                hasText: false,
                              ),
                              Expanded(
                                flex: itemCount <= 3 ? 2 : 7,
                                child: ListView.separated(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  itemBuilder: (_, index) =>
                                      const CartProductCard(),
                                  separatorBuilder: (context, index) => gapH8,
                                  itemCount: itemCount.value,
                                ),
                              ),
                              gapH12,
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: Sizes.p24,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Cart total',
                                              style: Get.textTheme.bodyMedium
                                                  ?.copyWith(
                                                color: AppColors.neutral600,
                                              ),
                                            ),
                                            gapH4,
                                            Text(
                                              '\$85.98',
                                              style: Get.textTheme.titleSmall
                                                  ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      gapW24,
                                      Expanded(
                                        flex: 3,
                                        child: PrimaryButton(
                                          buttonColor: AppColors.neutral800,
                                          buttonLabel: 'Checkout',
                                          onPressed: () => Get.toNamed(
                                            AppRoutes.checkoutRoute,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //* Product Image
                  Stack(
                    children: [
                      Container(
                        height: Sizes.deviceHeight * .50,
                        color: AppColors.blue300,
                        child: PageView.builder(
                          controller: pageController,
                          itemCount: 6,
                          onPageChanged: (value) => setState(() {
                            currentIndex.value = value;
                          }),
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
                      //* Page dots
                      Positioned(
                        bottom: 5,
                        left: 0,
                        right: 0,
                        child: PageDotsSecondary(
                          currentIndex: currentIndex.value,
                          countLength: 6,
                        ),
                      ),
                    ],
                  ),
                  //* Product Title
                  Padding(
                    padding: const EdgeInsets.all(
                      Sizes.p24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DualSense Wireless Controller',
                          style: Get.textTheme.headlineMedium,
                        ),
                        gapH8,
                        Text(
                          'Sony',
                          style: Get.textTheme.titleLarge?.copyWith(
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
                          style: Get.textTheme.titleLarge,
                        ),
                        gapH8,
                        //* Available Colors
                        SizedBox(
                          height: Sizes.deviceHeight * .15,
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
                          style: Get.textTheme.displayLarge,
                        ),
                        gapH12,
                        const TextCroppingWidget(
                          text:
                              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                        ),
                        gapH32,
                        Text(
                          'Reviews',
                          style: Get.textTheme.displayLarge,
                        ),
                        gapH24,
                        const ProductReviewerCard(
                          title: 'Consectetur tellus volutpat.',
                          dateTime: 'January 1, 2023',
                        ),
                        gapH24,
                        Row(
                          children: [
                            Expanded(
                              child: PrimaryOutlinedButton(
                                title: 'Show all reviews',
                                hasText: true,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        gapH32,
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Just for you',
                                style: Get.textTheme.displayLarge,
                              ),
                            ),
                            PrimaryTextButton(
                              defaultTextStyle: true,
                              buttonLabel: 'View all',
                              onPressed: () {},
                            )
                          ],
                        ),
                        gapH16,
                        SizedBox(
                          height: Sizes.deviceHeight * .45,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: 10,
                            separatorBuilder: (_, index) => gapW16,
                            itemBuilder: (_, index) => MainCard(
                              onPressed: () {},
                            ),
                          ),
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
