import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/core/constants/constants_export.dart';

class WishlistTabScreen extends StatefulWidget {
  const WishlistTabScreen({super.key});

  @override
  State<WishlistTabScreen> createState() => _WishlistTabScreenState();
}

class _WishlistTabScreenState extends State<WishlistTabScreen> {
  final deviceWidth = Get.size.width;
  final deviceHeight = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // padding: ,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(
                AppSizes.p32,
              ),
              width: 341,
              height: 394,
              decoration: BoxDecoration(
                color: AppColors.purple300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
