import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

import '../../../common_widgets/common_widgets_export.dart';
import '../../home_screen/widgets/main_card.dart';

class WishlistTabScreen extends StatefulWidget {
  const WishlistTabScreen({super.key});

  @override
  State<WishlistTabScreen> createState() => _WishlistTabScreenState();
}

class _WishlistTabScreenState extends State<WishlistTabScreen> {
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
                AppTitles.whishlistTitle,
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: Sizes.p24,
            right: Sizes.p24,
            bottom: Sizes.p32,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmptyStateCard(
                hasDescription: false,
                cardImage: AppAssets.wishlistEmpty,
                cardTitle: 'Uh Oh! You have no saved products.',
                cardColor: AppColors.purple300,
                buttonText: '+ Create a wishlist',
                buttonPressed: () {},
              ),
              gapH32,
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Trending',
                      style: Get.textTheme.headlineSmall,
                    ),
                  ),
                  PrimaryTextButton(
                    buttonLabel: 'View all',
                    onPressed: () {},
                  )
                ],
              ),
              gapH16,
              SizedBox(
                height: Sizes.deviceHeight * .45,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (_, index) => gapW16,
                  itemBuilder: (_, index) => const MainCard(
                    imageUrl:
                        'https://res.cloudinary.com/dm1ikhi6x/image/upload/ar_1,c_pad/w_747,c_limit/q_auto:low,f_auto/products/MS03NzY3MDYyMjE2OTYwOjMzNjQ5MTY3MDQ',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
