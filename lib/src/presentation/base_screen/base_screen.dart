import 'package:flutter/material.dart';

import '../home_screen/home_tab_screen.dart';
import '../profile_screen/profile_tab_screen.dart';
import '../search_screen/search_tab_screen.dart';
import '../wishlist_screen/wishlist_tab_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();
  final screens = [
    HomeTabScreen(),
    WishlistTabScreen(),
    ProfileTabScreen(),
    SearchTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: screens,
        ),
      ),
    );
  }
}
