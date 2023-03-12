import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParalaxBackground extends StatelessWidget {
  const ParalaxBackground({
    Key? key,
    this.top,
    required this.assetImagePath,
    this.left,
    this.right,
    this.bottom,
  }) : super(key: key);

  final double? top, left, right, bottom;
  final String assetImagePath;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: SizedBox(
        width: 110,
        height: 60,
        child: SvgPicture.asset(
          assetImagePath,
          fit: BoxFit.cover,
          width: 110,
          height: 60,
        ),
      ),
    );
  }
}
