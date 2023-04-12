import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

import '../../common_widgets/common_widgets_export.dart';
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p8,
              ),
              child: Text(
                AppTitles.whishlistTitle,
                style: Get.textTheme.headlineSmall,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: AppSizes.p24,
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
          padding: const EdgeInsets.only(
            left: AppSizes.p24,
            right: AppSizes.p24,
            bottom: AppSizes.p32,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: deviceWidth * .50,
                padding: const EdgeInsets.all(
                  AppSizes.p32,
                ),
                decoration: BoxDecoration(
                  color: AppColors.purple300,
                  borderRadius: BorderRadius.circular(
                    AppSizes.p10,
                  ),
                  // boxShadow: AppShadows.cardShadowLarge,
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppAssets.wishlistEmpty,
                      width: 145,
                      height: 145,
                    ),
                    gapH24,
                    Text(
                      'Uh Oh! You have no saved products.',
                      style: Get.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    gapH16,
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
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (context, index) => gapW16,
                  itemBuilder: (context, index) => const MainCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
