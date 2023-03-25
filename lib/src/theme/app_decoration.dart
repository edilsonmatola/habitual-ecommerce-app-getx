import 'package:flutter/material.dart';

import '../core/core_export.dart';

class AppDecoration {
  static BoxDecoration get fillRedA200 => BoxDecoration(
        color: AppColors.blue100,
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        border: Border.all(
          color: AppColors.blue100,
        ),
      );
}
