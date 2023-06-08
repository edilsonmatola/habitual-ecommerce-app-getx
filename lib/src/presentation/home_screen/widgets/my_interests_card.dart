import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';

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
      height: Sizes.deviceHeight * .65,
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
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                dividerColor: Colors.transparent,
                labelColor: AppColors.neutral800,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(right: Sizes.p32),
                indicatorColor: Colors.black,
                unselectedLabelColor: AppColors.neutral300,
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                labelStyle: Get.textTheme.bodyLarge?.copyWith(),
                tabs: interestsCategoriesList,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: Sizes.deviceWidth,
                          height: Sizes.deviceHeight * .12,
                          color: AppColors.blue500,
                        ),
                        Container(
                          width: Sizes.deviceWidth,
                          height: Sizes.deviceHeight * .12,
                          color: AppColors.yellow500,
                        ),
                        Container(
                          width: Sizes.deviceWidth,
                          height: Sizes.deviceHeight * .12,
                          color: AppColors.red500,
                        ),
                      ],
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
