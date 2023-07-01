import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/svg_icon.dart';
import 'package:habitual/src/presentation/home_screen/widgets/category_card.dart';
import 'package:habitual/src/presentation/home_screen/widgets/deals_card.dart';
import 'package:habitual/src/presentation/home_screen/widgets/my_interests_card.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../core/core_export.dart';
import 'widgets/main_card.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    const isLoggedIn = true;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            leading: const Padding(
              padding: EdgeInsets.only(
                left: Sizes.p24,
                top: Sizes.p16,
                bottom: Sizes.p16,
              ),
              child: SvgIcon(
                icon: AppAssets.appLogoBlackSmall,
              ),
            ),
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
            padding: const EdgeInsets.only(
              top: Sizes.p32,
            ),
            child: Column(
              children: [
                // * Just For You
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p24,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Trending',
                          style: Get.textTheme.headlineSmall,
                        ),
                      ),
                      PrimaryIconButton(
                        icon: AppIcons.iOSLeftArrowIcon,
                        onPressed: () {},
                      ),
                      PrimaryIconButton(
                        icon: AppIcons.iOSRightArrowIcon,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                gapH16,
                SizedBox(
                  height: Sizes.deviceHeight * .45,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.p24,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    separatorBuilder: (_, index) => gapW16,
                    itemBuilder: (_, index) => MainCard(
                      onPressed: () => Get.toNamed(
                        AppRoutes.productDetailsRoute,
                      ),
                    ),
                  ),
                ),
                gapH32,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p24,
                    vertical: Sizes.p16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Deals',
                          style: Get.textTheme.headlineSmall,
                        ),
                      ),
                      PrimaryTextButton(
                        buttonLabel: 'View all',
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                gapH16,
                SizedBox(
                  height: Sizes.deviceHeight * .3,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.p24,
                    ),
                    itemCount: 10,
                    separatorBuilder: (_, index) => gapW16,
                    itemBuilder: (_, index) => DealsCard(
                      onCardTap: () {},
                      onLikeTap: () {},
                    ),
                  ),
                ),
                gapH32,
                if (isLoggedIn) const MyInterestsCard(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p24,
                    vertical: Sizes.p16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard1Title,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: CategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard2Title,
                              color: AppColors.red300,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      gapH16,
                      Row(
                        children: [
                          Expanded(
                            child: CategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard3Title,
                              color: AppColors.blue300,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: CategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard4Title,
                              color: AppColors.green300,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
