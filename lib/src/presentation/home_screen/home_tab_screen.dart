import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/product_card.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // * App Bar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.p24,
                vertical: AppDimensions.p16,
              ),
              child: CustomAppBar(
                onPressed: () {},
                iconButton: AppIcons.shoppingCartIcon,
              ),
            ),
            gapH32,
            // * Products Cards
            Padding(
              padding: const EdgeInsets.only(
                left: AppDimensions.p24,
              ),
              child: Row(
                children: [
                  Text(
                    'Trending',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                  width: AppDimensions.p16,
                ),
                itemBuilder: (context, index) => ProductCard(),
              ),
            ),
            gapH32,
            Padding(
              padding: const EdgeInsets.only(
                left: AppDimensions.p24,
              ),
              child: Row(
                children: [
                  Text(
                    'Deals',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => SizedBox(
                  width: AppDimensions.p16,
                ),
                itemBuilder: (context, index) => ProductCard(
                  width: 163,
                  height: 80,
                  color: AppColors.neutral100,
                ),
              ),
            ),
            gapH32,
            SizedBox(
              height: Get.size.height * .30,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
