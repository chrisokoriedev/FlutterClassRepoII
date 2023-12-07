import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cocktailapp/util/color.dart';
import 'package:cocktailapp/view/home/home_view.dart';
import 'package:cocktailapp/view/profile/profile_view.dart';
import 'package:cocktailapp/view/search/search_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  List<Widget> getPages = [
    const HomeView(),
    const SearchView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _selectedIndex = index),
            children: getPages),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavyBar(
            iconSize: 26,
            containerHeight: 80,
            backgroundColor: AppColors.darkColor,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            selectedIndex: _selectedIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            }),
            items: [
              bottomComponent('Home', Icons.home),
              bottomComponent('Search', Icons.search),
              bottomComponent('Profile', Icons.person),
            ],
          ),
        ));
  }

  bottomComponent(String title, IconData iconData) {
    return BottomNavyBarItem(
      icon: Icon(iconData, color: AppColors.whiteColor),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor),
      ),
      activeColor: AppColors.lightDarkColor,
    );
  }
}
