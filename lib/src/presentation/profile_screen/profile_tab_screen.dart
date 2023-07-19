import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/account_card.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/order_card.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/profile_biography_field.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../common_widgets/common_widgets_export.dart';
import '../../core/core_export.dart';
import '../categories_screen/widgets/staggered_category_card.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
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

  final accountSettings = [
    'Orders',
    'Payment Methods',
    'Address',
    'Cupons',
  ];

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = true.obs;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(
                left: Sizes.p8,
              ),
              child: Text(
                AppTitles.profileTitle,
                style: Get.textTheme.headlineSmall,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: Sizes.p24,
                ),
                child: PrimaryIconButton(
                  icon: AppIcons.settingsIcon,
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
              left: Sizes.p24,
              right: Sizes.p24,
              bottom: Sizes.p32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProfileBiography(
                  userName: 'Leslie Flores',
                  userBiography:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia.',
                  editFunction: () {},
                ),
                gapH24,
                Visibility(
                  visible: isLoggedIn.value,
                  replacement: EmptyStateCard(
                    hasDescription: true,
                    cardImage: AppAssets.profileEmpty,
                    cardTitle: 'What interests you!',
                    cardDescription:
                        "You don't have any interests listed. Tell us what you love the most and we'll recommend relevant products to you.",
                    cardColor: AppColors.red300,
                    buttonText: '+ Add my interests',
                    buttonPressed: () => Get.toNamed(
                      AppRoutes.myInterestsRoute,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //* User Last/Recent Order
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Orders',
                            style: Get.textTheme.displayLarge,
                          ),
                          PrimaryTextButton(
                            buttonLabel: 'View all',
                            onPressed: () => Get.toNamed(
                              AppRoutes.myInterestsRoute,
                            ),
                          ),
                        ],
                      ),
                      gapH16,
                      OrderCard(
                        onTap: () {},
                      ),
                      //* User Interests
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Interests',
                            style: Get.textTheme.displayLarge,
                          ),
                          PrimaryTextButton(
                            buttonLabel: 'View all',
                            onPressed: () => Get.toNamed(
                              AppRoutes.myInterestsRoute,
                            ),
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
                    ],
                  ),
                ),
                gapH24,
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Account',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    PrimaryTextButton(
                      buttonLabel: 'View all',
                      onPressed: () {},
                    ),
                  ],
                ),
                gapH16,
                SizedBox(
                  height: Get.size.height * .15,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: accountSettings.length,
                    separatorBuilder: (_, index) => gapW16,
                    itemBuilder: (_, index) => AccountCard(
                      text: accountSettings[index],
                    ),
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
