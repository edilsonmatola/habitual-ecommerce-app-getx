import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/constants/app_fonts.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final String categoryName;
  final String imageUrl;
  final VoidCallback? onTap;

  CategoryCard({
    super.key,
    required this.controller,
    required this.color,
    required this.categoryName,
    required this.imageUrl,
    this.onTap,
  })  : height = Tween<double>(begin: 270, end: 150).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0,
              .300,
              curve: Curves.ease,
            ),
          ),
        ),
        itemHeight = Tween<double>(begin: 150, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0,
              .300,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> controller;
  final Animation<double> height;
  final Animation<double> itemHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, child) => Container(
        height: height.value,
        width: Sizes.deviceWidth * .5,
        padding: const EdgeInsetsDirectional.all(
          Sizes.p16,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              Sizes.p10,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryName,
              style: Get.textTheme.displayLarge?.copyWith(
                fontWeight: Fonts.interSemiBold,
              ),
            ),
            gapH8,
            Center(
              child: CachedNetworkImage(
                alignment: Alignment.center,
                placeholder: (_, url) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                imageUrl: imageUrl,
                height: itemHeight.value,
                fit: BoxFit.contain,
              ),
            ),
            gapH8,
            Align(
              alignment: Alignment.centerRight,
              child: PrimaryOutlinedButton(
                hasText: false,
                onPressed: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StaggeredCard extends StatefulWidget {
  final Color color;
  final String categoryName;
  final String imageUrl;
  final VoidCallback? onTap;

  const StaggeredCard({
    super.key,
    required this.color,
    required this.categoryName,
    required this.imageUrl,
    this.onTap,
  });

  @override
  StaggeredCardState createState() => StaggeredCardState();
}

class StaggeredCardState extends State<StaggeredCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isActive = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  Future<void> _reverseAnimation() async {
    try {
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (isActive) {
          isActive = !isActive;
          _reverseAnimation();
        } else {
          isActive = !isActive;
          _playAnimation();
        }
      },
      child: CategoryCard(
        controller: _controller.view,
        categoryName: widget.categoryName,
        color: widget.color,
        imageUrl: widget.imageUrl,
        onTap: widget.onTap,
      ),
    );
  }
}
