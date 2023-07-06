import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/categories_screen/widgets/staggered_category_card.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../data/data.dart' as app_data;
import '../../home_screen/widgets/deals_card.dart';
import '../widgets/category_card_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(
                  left: Sizes.p8,
                ),
                child: Text(
                  AppTitles.categoriesTitle,
                  style: Get.textTheme.headlineSmall,
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
              padding: const EdgeInsetsDirectional.all(
                Sizes.p24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Most Popular',
                    style: Get.textTheme.headlineSmall,
                  ),
                  gapH16,
                  MasonryGridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    crossAxisSpacing: Sizes.p16,
                    mainAxisSpacing: Sizes.p16,
                    itemCount: app_data.mostPopularCategories.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (_, index) => StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: index.isEven ? 3 : 2,
                      child: StaggeredCard(
                        color: app_data.mostPopularCategoriesColors[index],
                        categoryName: app_data.mostPopularCategories[index],
                        imageUrl: app_data.mostPopularCategoriesImage[index],
                        onTap: () {},
                      ),
                    ),
                  ),
                  gapH24,
                  Text(
                    'All Categories',
                    style: Get.textTheme.displayLarge,
                  ),
                  gapH16,
                  Wrap(
                    spacing: Sizes.p8,
                    runSpacing: Sizes.p8,
                    children: [
                      ...List.generate(
                        app_data.categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedIndex.contains(index)) {
                                selectedIndex.remove(index);
                              } else {
                                selectedIndex.add(index);
                              }
                            });
                          },
                          child: CategoryCardItem(
                            borderColor: selectedIndex.contains(index)
                                ? AppColors.neutral800
                                : AppColors.neutral300,
                            cardColor: selectedIndex.contains(index)
                                ? AppColors.neutral800
                                : AppColors.white,
                            categoryName: app_data.categories[index],
                            textColor: selectedIndex.contains(index)
                                ? AppColors.white
                                : AppColors.neutral800,
                          ),
                        ),
                      )
                    ],
                  ),
                  gapH24,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Deals',
                          style: Get.textTheme.displayLarge,
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
                    height: Sizes.deviceHeight * .3,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.p24,
                      ),
                      itemCount: app_data.deals.length,
                      separatorBuilder: (_, index) => gapW16,
                      itemBuilder: (_, index) => DealsCard(
                        item: app_data.deals[index],
                        onLikeTap: () {},
                      ),
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
