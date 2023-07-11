import 'package:flutter/material.dart';

import '../home_screen/view/home_tab_screen.dart';
import '../profile_screen/profile_tab_screen.dart';
import '../search_screen/search_tab_screen.dart';
import '../wishlist_screen/view/wishlist_tab_screen.dart';
import 'widgets/custom_bottom_navbar.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();
  final screens = [
    const HomeTabScreen(),
    const WishlistTabScreen(),
    const ProfileTabScreen(),
    const SearchTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(
          screenController: pageController,
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: screens,
        ),
      ),
    );
  }
}
