import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class CategoryCard extends StatelessWidget {
  final Color begin;
  final Color end;
  final String categoryName;
  final String imageUrl;

  CategoryCard({
    super.key,
    required this.controller,
    required this.begin,
    required this.end,
    required this.categoryName,
    required this.imageUrl,
  })  : height = Tween<double>(begin: 150, end: 250.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.300,
              curve: Curves.ease,
            ),
          ),
        ),
        itemHeight = Tween<double>(begin: 0, end: 150.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.300,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> controller;
  final Animation<double> height;
  final Animation<double> itemHeight;

  // This function is called each time the controller "ticks" a new frame.
  // When it runs, all of the animation's values will have been
  // updated to reflect the controller's current value.
  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Container(
      height: height.value,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [begin, end],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            Sizes.p10,
          ),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
              alignment: const Alignment(-1, 0),
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
//        mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 16.0),
                height: itemHeight.value,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      Sizes.p24,
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p16,
                  vertical: Sizes.p8,
                ),
                child: Text(
                  'View more',
                  style: TextStyle(
                    color: end,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}

class StaggeredCardCard extends StatefulWidget {
  final Color begin;
  final Color end;
  final String categoryName;
  final String assetPath;

  const StaggeredCardCard({
    super.key,
    required this.begin,
    required this.end,
    required this.categoryName,
    required this.assetPath,
  });

  @override
  StaggeredCardCardState createState() => StaggeredCardCardState();
}

class StaggeredCardCardState extends State<StaggeredCardCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isActive = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
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
    var timeDilation = 10.0; // 1.0 is normal animation speed.
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
        begin: widget.begin,
        end: widget.end,
        imageUrl: widget.assetPath,
      ),
    );
  }
}
