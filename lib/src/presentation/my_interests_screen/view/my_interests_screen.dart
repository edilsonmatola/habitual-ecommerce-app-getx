import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../../core/core_export.dart';
import '../../../routes/app_pages.dart';

class MyInterestsScreen extends StatelessWidget {
  const MyInterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    icon: AppIcons.logoutIcon,
                    onPressed: () => Get.offAllNamed(
                      AppRoutes.signInRoute,
                    ),
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
                  // TODO: Staggered Grid View
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
