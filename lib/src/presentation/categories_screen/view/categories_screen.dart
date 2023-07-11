import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/categories_screen/widgets/staggered_category_card.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../home_screen/widgets/deals_card.dart';
import '../widgets/category_card_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<int> selectedIndex = [];

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

  final popularCategories = [
    'Tech',
    'Fashion',
    'Music',
    'Reading',
  ];

  final popularCategoriesColors = [
    AppColors.purple300,
    AppColors.blue300,
    AppColors.red300,
    AppColors.green300,
  ];

  final popularCategoriesImage = [
    'https://media.croma.com/image/upload/v1685969049/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256608_rm160r.png',
    'https://images.ray-ban.com/is/image/RayBan/8053672845358__002.png?impolicy=RB_RB_FBShare',
    'https://cdn11.bigcommerce.com/s-h0bqu/images/stencil/1280x1280/products/4398/9412/Fender_Bullet_Stratocaster_HT_Electric_Guitar_Brown_Sunburst__34857.1678809883.png?c=2',
    'https://bookbins.in/wp-content/uploads/2021/08/The-48-Laws-Of-Power-Robert-Greene-Buy-Online-Bookbins-1.png',
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
                    itemCount: popularCategories.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (_, index) => StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: index.isEven ? 3 : 2,
                      child: StaggeredCard(
                        color: popularCategoriesColors[index],
                        categoryName: popularCategories[index],
                        imageUrl: popularCategoriesImage[index],
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
                        categories.length,
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
                            categoryName: categories[index],
                            textColor: selectedIndex.contains(index)
                                ? AppColors.white
                                : AppColors.neutral800,
                          ),
                        ),
                      ),
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
                      itemCount: 10,
                      separatorBuilder: (_, index) => gapW16,
                      itemBuilder: (_, index) => DealsCard(
                        onCardTap: () {},
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
