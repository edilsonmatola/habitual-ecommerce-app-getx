import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

import '../../common_widgets/common_widgets_export.dart';
import '../home_screen/widgets/custom_app_bar.dart';
import '../home_screen/widgets/main_card.dart';

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
        padding: const EdgeInsets.only(
          left: AppSizes.p16,
          right: AppSizes.p16,
          top: AppSizes.p56,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomAppBar(
              onPressed: () {},
              iconButton: AppIcons.shoppingCartIcon,
            ),
            gapH32,
            Container(
              width: deviceWidth * .50,
              padding: const EdgeInsets.all(
                AppSizes.p32,
              ),
              decoration: BoxDecoration(
                color: AppColors.purple300,
                borderRadius: BorderRadius.circular(AppSizes.p10),
                // boxShadow: AppShadows.cardShadowLarge,
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    SvgPicture.asset(
                      'assets/images/wishlist_screen/products-empty.svg',
                      width: 145,
                      height: 145,
                    ),
                    gapH24,
                    Text(
                      'Uh Oh! You have no saved products.',
                      style: Get.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryButton(
                      buttonColor: AppColors.white,
                      labelColor: AppColors.neutral800,
                      buttonLabel: '+ Create a wishlist',
                      onPressed: () {},
                      // iconLeft: Icons.add,
                    ),
                  ],
                ),
              ),
            ),
            gapH32,
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Trending',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                PrimaryTextButton(
                  buttonLabel: 'View all',
                  onPressed: () {},
                )
              ],
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // padding: const EdgeInsets.symmetric(
                //   horizontal: AppSizes.p16,
                // ),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (context, index) => gapW16,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}
