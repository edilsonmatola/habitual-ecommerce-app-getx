import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core_export.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/main_card.dart';

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
        child: Column(
          children: [
            // * AppBar
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
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.p24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text('> <')
                ],
              ),
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (context, index) => gapW16,
                itemBuilder: (context, index) => MainCard(),
              ),
            ),
            gapH32,
            SizedBox(
              height: Get.size.height * .30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                itemCount: 10,
                separatorBuilder: (context, index) => gapW16,
                itemBuilder: (context, index) => SizedBox(
                  width: 50,
                  height: 50,
                  child: Card(
                    color: AppColors.red300,
                  ),
                ),
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}
