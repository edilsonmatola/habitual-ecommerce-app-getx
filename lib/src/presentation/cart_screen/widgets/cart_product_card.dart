import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/core_export.dart';
import 'package:habitual/src/presentation/cart_screen/widgets/quantity_widget.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({Key? key}) : super(key: key);

  // final CartItemModel cartItemModel;

  // final CartController cartController = Get.find();
  // final ProductDataController productDataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: .3,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                // TODO: Remove product from cart function
                print('Product removed');
              },
              backgroundColor: AppColors.red400,
              foregroundColor: Colors.white,
              icon: Icons.delete,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          child: Row(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://scufgaming.com/media/prismic/11a0b46a-25a9-4e3e-938f-4a152863d065_reflex_compare_model_fps_steel_gray_front_850x600.png',
                  width: 80,
                  height: 80,
                  placeholder: (_, url) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
              gapW16,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DualSense Wireless Controller',
                      style: Get.textTheme.displayMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    gapH8,
                    const QuantityWidget(),
                  ],
                ),
              ),
              gapW16,
              Text(
                '\$79.99',
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: Fonts.interMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
