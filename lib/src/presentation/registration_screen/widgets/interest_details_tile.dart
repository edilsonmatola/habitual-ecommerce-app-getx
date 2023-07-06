import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class InterestDetailsTile extends StatefulWidget {
  const InterestDetailsTile({
    super.key,
    required this.interestTitle,
    this.onChanged,
    this.value,
  });

  final String interestTitle;
  final void Function(bool?)? onChanged;
  final bool? value;

  @override
  State<InterestDetailsTile> createState() => _InterestDetailsTileState();
}

class _InterestDetailsTileState extends State<InterestDetailsTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.value,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Sizes.p16,
        ),
      ),
      checkboxShape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.neutral300,
        ),
        borderRadius: BorderRadius.circular(
          Sizes.p2,
        ),
      ),
      checkColor: AppColors.white,
      title: Text(
        widget.interestTitle,
        style: Get.textTheme.bodyMedium?.copyWith(
          fontWeight: Fonts.interRegular,
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
