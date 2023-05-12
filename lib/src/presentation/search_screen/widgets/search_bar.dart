import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:habitual/src/common_widgets/common_widgets_export.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_fonts.dart';
import 'package:habitual/src/core/constants/app_icons.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return TextFormField(
      controller: searchController,
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(
            Sizes.p20,
          ),
          child: SvgPicture.asset(
            AppIcons.searchIcon,
          ),
        ),
        suffixIcon: PrimaryTextButton(
          buttonLabel: 'Done',
          fontWeight: AppFonts.interSemiBold,
          onPressed: () {
            searchController.clear();
            FocusScope.of(context).unfocus();
          },
        ),
        hintText: 'Search by keyword or categories',
        hintStyle: Get.textTheme.displaySmall?.copyWith(
          color: AppColors.neutral400,
          fontWeight: AppFonts.interRegular,
        ),
        isDense: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
