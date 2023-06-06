import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/core_export.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.screenController,
  }) : super(key: key);

  final PageController screenController;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          currentPage = index;
          // widget.screenController.jumpToPage(index);
          widget.screenController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        });
      },
      currentIndex: currentPage,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      unselectedLabelStyle: TextStyle(
        color: AppColors.neutral400,
        fontFamily: Fonts.interFontFamily,
      ),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.homeIcon,
            color:
                currentPage == 0 ? AppColors.neutral900 : AppColors.neutral400,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.favoriteIcon,
            color:
                currentPage == 1 ? AppColors.neutral900 : AppColors.neutral400,
          ),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.profileIcon,
            color:
                currentPage == 2 ? AppColors.neutral900 : AppColors.neutral400,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.searchIcon,
            color:
                currentPage == 3 ? AppColors.neutral900 : AppColors.neutral400,
          ),
          label: 'Search',
        ),
      ],
    );
  }
}
