import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/common_widgets/custom_divider.dart';

import '../../../core/core_export.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              title: Text(
                AppTitles.checkoutTitle,
                style: Get.textTheme.headlineSmall,
              ),
            ),
          ],
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment Method',
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
                //* Bank Card
                Container(
                  width: 342,
                  height: 192,
                  color: AppColors.blue500,
                ),
                gapH24,
                const CustomDivider(),
                gapH24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
