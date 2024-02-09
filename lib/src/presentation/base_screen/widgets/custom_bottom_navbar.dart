import 'package:flutter/material.dart';

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
          widget.screenController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        });
      },
      currentIndex: currentPage,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey.shade400,
      unselectedLabelStyle: TextStyle(
        color: Colors.grey.shade400,
      ),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home_outlined,
            color: currentPage == 0 ? Colors.black : Colors.grey.shade400,
          ),
          backgroundColor:
              currentPage == 0 ? Colors.black : Colors.grey.shade400,
        ),
        BottomNavigationBarItem(
          label: 'Wishlist',
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: currentPage == 0 ? Colors.black : Colors.grey.shade400,
          ),
          backgroundColor:
              currentPage == 0 ? Colors.black : Colors.grey.shade400,
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(
            Icons.person_2_outlined,
            color: currentPage == 0 ? Colors.black : Colors.grey.shade400,
          ),
          backgroundColor:
              currentPage == 0 ? Colors.black : Colors.grey.shade400,
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(
            Icons.search_outlined,
            color: currentPage == 0 ? Colors.black : Colors.grey.shade400,
          ),
          backgroundColor:
              currentPage == 0 ? Colors.black : Colors.grey.shade400,
        ),
      ],
    );
  }
}
