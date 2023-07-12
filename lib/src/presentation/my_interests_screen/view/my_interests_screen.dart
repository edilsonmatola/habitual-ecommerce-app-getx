import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../categories_screen/widgets/staggered_category_card.dart';

class MyInterestsScreen extends StatefulWidget {
  const MyInterestsScreen({super.key});

  @override
  State<MyInterestsScreen> createState() => _MyInterestsScreenState();
}

class _MyInterestsScreenState extends State<MyInterestsScreen> {
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

  final trendingInGamingImages = [
    'https://tech4u.co.mz/wp-content/uploads/2023/01/cq5dam.web_.1280.1280.png',
    'https://images.csmonitor.com/csm/2014/06/hobbit.png?alias=standard_900x600nc',
    'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/171/17145/17145330_8.png',
    'https://media2.sport-bittl.com/images/product_images/original_images/27826167676a_Birkenstock_Arizona_Schuh_He_schwarz.png',
  ];

  final trendingInReadingImages = [
    'https://tech4u.co.mz/wp-content/uploads/2023/01/cq5dam.web_.1280.1280.png',
    'https://images.csmonitor.com/csm/2014/06/hobbit.png?alias=standard_900x600nc',
    'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/171/17145/17145330_8.png',
    'https://media2.sport-bittl.com/images/product_images/original_images/27826167676a_Birkenstock_Arizona_Schuh_He_schwarz.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  left: Sizes.p8,
                ),
                child: Text(
                  'My Interests',
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
              padding: const EdgeInsets.all(
                Sizes.p24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Interests',
                        style: Get.textTheme.displayLarge,
                      ),
                      PrimaryOutlinedButton(
                        hasText: true,
                        title: 'Edit',
                        onPressed: () {},
                      ),
                    ],
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
                  // * Gaming
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Trending in Gaming',
                          style: Get.textTheme.displayLarge,
                        ),
                      ),
                      PrimaryTextButton(
                        buttonLabel: 'View all',
                        onPressed: () {},
                      )
                    ],
                  ),
                  gapH24,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Trending in Reading',
                          style: Get.textTheme.displayLarge,
                        ),
                      ),
                      PrimaryTextButton(
                        buttonLabel: 'View all',
                        onPressed: () {},
                      )
                    ],
                  ),
                  gapH8,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
