import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/home_screen/widgets/my_interests_product_card.dart';

import '../../../common_widgets/common_widgets_export.dart';

class MyInterestsCard extends StatefulWidget {
  const MyInterestsCard({super.key});

  @override
  State<MyInterestsCard> createState() => _MyInterestsCardState();
}

class _MyInterestsCardState extends State<MyInterestsCard>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final interestsCategoriesList = [
    const Tab(
      child: Text('Tech'),
    ),
    const Tab(
      child: Text('Reading'),
    ),
    const Tab(
      child: Text('Gaming'),
    ),
    const Tab(
      child: Text('Fashion'),
    ),
    const Tab(
      child: Text('Movies'),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: interestsCategoriesList.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.deviceWidth * .90,
      height: Sizes.deviceHeight * .70,
      child: Card(
        color: AppColors.yellow100,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'My Interests',
                      style: Get.textTheme.headlineSmall,
                    ),
                  ),
                  PrimaryTextButton(
                    buttonLabel: 'View all',
                    onPressed: () {},
                  )
                ],
              ),
              TabBar(
                tabs: interestsCategoriesList,
                isScrollable: true,
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                dividerColor: Colors.transparent,
                labelColor: AppColors.neutral800,
                labelPadding: const EdgeInsets.only(right: Sizes.p32),
                indicatorColor: AppColors.neutral800,
                // unselectedLabelColor: AppColors.neutral300,
                // unselectedLabelStyle: const TextStyle(
                //   color: Colors.black,
                //   fontFamily: 'Lato',
                //   fontSize: 16,
                //   fontWeight: FontWeight.w400,
                // ),
                labelStyle: Get.textTheme.bodyLarge?.copyWith(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Sizes.p16,
                      ),
                      child: Column(
                        children: [
                          MyInterestsProductCard(
                            onPressed: () {},
                            name: 'Macbook Pro 13"',
                            brand: 'Apple',
                            price: 1934.99,
                            imageUrl:
                                'https://media.croma.com/image/upload/v1685969095/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256605_li76nl.png',
                          ),
                          gapH8,
                          MyInterestsProductCard(
                            onPressed: () {},
                            name: 'DualSense Wireless Controller',
                            brand: 'Sony',
                            price: 79.99,
                            imageUrl:
                                'https://static0.xdaimages.com/wordpress/wp-content/uploads/2023/03/playstation-dualsense-edge-wireless-controller.png',
                          ),
                          MyInterestsProductCard(
                            onPressed: () {},
                            name: 'Alienware 38” Curved Monitor ',
                            brand: 'Dell',
                            price: 2454.99,
                            imageUrl:
                                'https://res.cloudinary.com/dev-and-gear/image/upload/w_1920,q_auto,f_auto//v1641829496/Alienware_34_Curved_QD-OLED_Gaming_Monitor-AW3423DW_bkf9jp',
                          ),
                          gapH16,
                          PrimaryButton(
                            buttonLabel: 'View "Tech" products',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Reading',
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Gaming',
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Fashion',
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Movies',
                      ),
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
