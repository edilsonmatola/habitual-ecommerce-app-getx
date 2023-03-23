import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.p24,
                vertical: AppDimensions.p16,
              ),
              child: CustomAppBar(
                onPressed: () {},
                iconButton: AppIcons.shoppingCartIcon,
              ),
            ),
            gapH32,
            // * Just For You
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.p24,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Trending',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.iOSLeftArrowIcon,
                    ),
                  ),
                  gapW4,
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.iOSRightArrowIcon,
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                separatorBuilder: (context, index) => gapW16,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
            gapH32,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.p24,
                vertical: AppDimensions.p16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Deals',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.iOSLeftArrowIcon,
                    ),
                  ),
                  gapW4,
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.iOSRightArrowIcon,
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
            SizedBox(
              height: Get.size.height * .30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimensions.p24),
                itemCount: 10,
                separatorBuilder: (context, index) => gapW16,
                itemBuilder: (context, index) => const MainCard(
                  width: 163,
                  height: 218,
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
