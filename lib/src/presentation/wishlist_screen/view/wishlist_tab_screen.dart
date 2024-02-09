import 'package:flutter/material.dart';

import '../../../app_assets.dart';

class WishlistTabScreen extends StatelessWidget {
  const WishlistTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  Assets.wishlist,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
