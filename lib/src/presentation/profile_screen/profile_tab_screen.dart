import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/account_card.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/profile_biography_field.dart';
import 'package:habitual/src/routes/app_pages.dart';

import '../../common_widgets/common_widgets_export.dart';
import '../../core/core_export.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
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
                  icon: AppIcons.logoutIcon,
                  onPressed: () => Get.offAllNamed(
                    AppRoutes.signInRoute,
                  ),
                ),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
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
              EmptyStateCard(
                hasDescription: true,
                cardImage: AppAssets.profileEmpty,
                cardTitle: 'What interests you!',
                cardDescription:
                    "You don't have any interests listed. Tell us what you love the most and we'll recommend relevant products to you.",
                cardColor: AppColors.red300,
                buttonText: '+ Add my interests',
                buttonPressed: () {},
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineSmall,
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
                  itemCount: 10,
                  separatorBuilder: (context, index) => gapW16,
                  itemBuilder: (context, index) => const AccountCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
