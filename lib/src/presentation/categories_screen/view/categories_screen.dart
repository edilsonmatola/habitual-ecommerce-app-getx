import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/categories_screen/widgets/category_card.dart';

import '../../../common_widgets/common_widgets_export.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<int> selectedIndex = [];

  final title = [
    'Action & Adventure',
    'Classics',
    'Essays',
    'Comic Book / Graphical Novel',
    'Fantsay',
    'Detective & Mistery',
    'Historical Fiction',
    'Horror',
    'Literary Fiction',
    'Romance',
    'Science Fiction',
    'Short Stories',
    'Cookbooks',
    'Suspense & Thrillers',
    "Women's Fiction",
    'Biographies & Autobiographies',
    'History',
    'Memoir',
    'Poetry',
    'Self-Help',
    'True Crime',
    'Other'
  ];

  final categories = [
    'Automative',
    'Baby',
    'Bags',
    'Beauty Supplies',
    'Books',
    'clothing',
    'Jewelry',
    'Handmade',
    'Health Care',
    'Home',
    'Instruments',
    'Movies + TV',
    'Music',
    'Pet',
    'Patio, Lawn + Garden',
    'Science',
    'Shoes',
    'Sports',
    'Tools',
    'Toys + Games',
    'Video Games'
  ];
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
                children: [
                  Text(
                    'Most Populer',
                    style: Get.textTheme.headlineSmall,
                  ),
                  gapH16,
                  StaggeredGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: Sizes.p16,
                    crossAxisSpacing: Sizes.p16,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: CategoryCard(
                          title: 'Tech',
                          imageUrl:
                              'https://media.croma.com/image/upload/v1685969049/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256608_rm160r.png',
                          color: AppColors.purple300,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.blue),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.blue),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.blue),
                      ),
                    ],
                  ),
                  gapH24,
                  Text(
                    'All Categories',
                    style: Get.textTheme.displayLarge,
                  ),
                  gapH16,
                  Wrap(
                    spacing: 10,
                    children: [
                      ...List.generate(
                        categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedIndex.contains(index)) {
                                selectedIndex.remove(index);
                              }
                              selectedIndex.add(index);
                            });
                          },
                          child: Container(
                            margin: const EdgeInsetsDirectional.all(
                              Sizes.p4,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: selectedIndex.contains(index)
                                    ? AppColors.neutral800
                                    : AppColors.neutral300,
                              ),
                              color: selectedIndex.contains(index)
                                  ? AppColors.neutral800
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Item ${categories[index]}",
                              style: Get.textTheme.bodyMedium?.copyWith(
                                color: selectedIndex.contains(index)
                                    ? AppColors.white
                                    : AppColors.neutral800,
                                fontWeight: Fonts.interRegular,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
