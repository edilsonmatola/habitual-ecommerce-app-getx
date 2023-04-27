import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/cards/empty_state_card.dart';
import 'package:habitual/src/presentation/profile_screen/widgets/account_card.dart';

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
    final deviceWidth = Get.size.width;
    // final deviceHeight = Get.size.height;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p8,
              ),
              child: Text(
                AppTitles.profileTitle,
                style: Get.textTheme.headlineSmall,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: AppSizes.p24,
                ),
                child: PrimaryIconButton(
                  icon: AppIcons.shoppingCartIcon,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: AppSizes.p24,
            right: AppSizes.p24,
            bottom: AppSizes.p32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leslie Flores',
                          style: Get.textTheme.displayLarge,
                        ),
                        gapH8,
                        Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia.',
                          style: Get.textTheme.titleLarge?.copyWith(
                            fontWeight: AppFonts.interRegular,
                          ),
                        ),
                        gapH8,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: PrimaryOutlinedButton(
                            isText: true,
                            title: 'Edit',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: AppSizes.p48,
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 73,
                          height: 73,
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage: CachedNetworkImageProvider(
                              'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
