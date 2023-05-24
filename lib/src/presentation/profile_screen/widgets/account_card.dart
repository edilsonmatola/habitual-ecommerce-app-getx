import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    this.width,
    this.height,
    // required this.icon,
    // required this.text,
  });

  final double? width;
  final double? height;
  // final String icon;
  // final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 118,
          height: height ?? 118,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
            ),
            color: AppColors.neutral100,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(Sizes.p10),
              ),
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Sizes.p12,
                    Sizes.p24,
                    Sizes.p12,
                    Sizes.p12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          AppIcons.shoppingBagIcon,
                          width: 40,
                          height: 40,
                          color: AppColors.neutral300,
                        ),
                      ),
                      gapH8,
                      Text(
                        'Orders',
                        style: Get.textTheme.bodyMedium?.copyWith(
                          fontWeight: AppFonts.interSemiBold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
