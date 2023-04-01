import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/presentation/home_screen/widgets/category_card.dart';
import 'package:habitual/src/presentation/home_screen/widgets/deals_card.dart';

import '../../core/core_export.dart';
import 'widgets/main_card.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  final deviceWidth = Get.size.width;
  final deviceHeight = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 15,
                  bottom: 15,
                ),
                child: SvgPicture.asset(
                  AppAssets.appLogoBlackSmall,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.shoppingCartIcon,
                    ),
                  ),
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              gapH32,
              // * Just For You
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.p24,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Trending',
                        style: Theme.of(context).textTheme.headlineSmall,
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
                height: Get.size.height * .45,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.p24,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (context, index) => gapW16,
                  itemBuilder: (context, index) => const MainCard(),
                ),
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.p24,
                  vertical: AppSizes.p16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Deals',
                        style: Theme.of(context).textTheme.headlineSmall,
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
                height: Get.size.height * .30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.p24,
                  ),
                  itemCount: 10,
                  separatorBuilder: (context, index) => gapW16,
                  itemBuilder: (context, index) => const DealsCard(),
                ),
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.p24,
                  vertical: AppSizes.p16,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CategoryCard(
                            width: deviceWidth * .50,
                            height: deviceHeight * .20,
                            title: AppTitles.categoryCard1Title,
                            buttonPressed: () {},
                            cardPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: CategoryCard(
                            width: deviceWidth * .50,
                            height: deviceHeight * .20,
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
                            width: deviceWidth * .50,
                            height: deviceHeight * .20,
                            title: AppTitles.categoryCard3Title,
                            color: AppColors.blue300,
                            buttonPressed: () {},
                            cardPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: CategoryCard(
                            width: deviceWidth * .50,
                            height: deviceHeight * .20,
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
    );
  }
}
