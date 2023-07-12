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
  final trendingCardColors = [
    AppColors.blue300,
    AppColors.green300,
    AppColors.purple300,
    AppColors.red300,
    AppColors.yellow300,
  ];

  final trendingImages = [
    'https://res-1.cloudinary.com/grover/image/upload/v1678133137/uwe0cdxwdhfmqp2z7tlt.png',
    'https://bumpshoes.com/cdn/shop/products/main_1055x.png?v=1518846318',
    'https://assets.sunglasshut.com/is/image/LuxotticaRetail/8056597614160__STD__shad__qt.png?impolicy=SGH_bgtransparent&width=1000',
    'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_104146487/fee_786_587_png',
  ];

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
                  itemCount: trendingImages.length,
                  separatorBuilder: (_, index) => gapW16,
                  itemBuilder: (_, index) => MainCard(
                    cardColor:
                        trendingCardColors[index % trendingCardColors.length],
                    imageUrl: trendingImages[index],
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
