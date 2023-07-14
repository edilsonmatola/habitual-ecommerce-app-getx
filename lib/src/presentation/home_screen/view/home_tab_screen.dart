import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/svg_asset.dart';
import 'package:habitual/src/presentation/home_screen/widgets/deals_card.dart';
import 'package:habitual/src/presentation/home_screen/widgets/home_category_card.dart';
import 'package:habitual/src/presentation/home_screen/widgets/my_interests_card.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../../core/core_export.dart';
import '../widgets/main_card.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  final trendingCardColors = [
    AppColors.blue300,
    AppColors.green300,
    AppColors.purple300,
    AppColors.red300,
    AppColors.yellow300,
  ];

  final trendingImages = [
    'https://res-1.cloudinary.com/grover/image/upload/v1678133137/uwe0cdxwdhfmqp2z7tlt.png',
    'https://bumpshoes.com/cdn/shop/products/main_1055x.png?v=1518846318',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597614160__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
    'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_104146487/fee_786_587_png',
  ];

  final dealsImages = [
    'https://assets.bose.com/content/dam/cloudassets/Bose_DAM/Web/consumer_electronics/global/products/headphones/qc35_ii/product_silo_images/qc35_ii_black_EC_hero.png/jcr:content/renditions/cq5dam.web.1280.1280.png',
    'https://images.csmonitor.com/csm/2014/06/hobbit.png?alias=standard_900x600nc',
    'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/171/17145/17145330_8.png',
    'https://media2.sport-bittl.com/images/product_images/original_images/27826167676a_Birkenstock_Arizona_Schuh_He_schwarz.png',
  ];

  @override
  Widget build(BuildContext context) {
    const isLoggedIn = false;
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
              child: SvgAsset(
                assetPath: AppAssets.appLogoBlackSmall,
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
                    itemCount: trendingImages.length,
                    separatorBuilder: (_, index) => gapW16,
                    itemBuilder: (_, index) => MainCard(
                      cardColor:
                          trendingCardColors[index % trendingCardColors.length],
                      imageUrl: trendingImages[index],
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
                    itemCount: dealsImages.length,
                    separatorBuilder: (_, index) => gapW16,
                    itemBuilder: (_, index) => DealsCard(
                      imageUrl: dealsImages[index],
                      onCardTap: () => Get.toNamed(
                        AppRoutes.productDetailsRoute,
                      ),
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
                            child: HomeCategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard1Title,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: HomeCategoryCard(
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
                            child: HomeCategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard3Title,
                              color: AppColors.blue300,
                              buttonPressed: () {},
                              cardPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: HomeCategoryCard(
                              width: Sizes.deviceWidth * .50,
                              height: Sizes.deviceHeight * .20,
                              title: AppTitles.categoryCard4Title,
                              color: AppColors.green300,
                              buttonPressed: () => Get.toNamed(
                                AppRoutes.categoriesRoute,
                              ),
                              cardPressed: () => Get.toNamed(
                                AppRoutes.categoriesRoute,
                              ),
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
