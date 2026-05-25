import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SpotifyBottomNav extends StatefulWidget {
  const SpotifyBottomNav({super.key});

  @override
  State<SpotifyBottomNav> createState() => _SpotifyBottomNavState();
}

class _SpotifyBottomNavState extends State<SpotifyBottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.black.withOpacity(0.9),
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: 'Your Library',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Premium',
        ),
      ],
    );
  }
}
