// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/features/home/presentation/views/cart.dart';
import 'package:pegman/features/home/presentation/views/discover.dart';
import 'package:pegman/features/home/presentation/views/home.dart';
// import 'package:pegman/features/home/presentation/views/profile.dart';
import 'package:pegman/features/home/presentation/views/saved.dart';
// import 'package:pegman/features/home/presentation/views/saved.dart';

class MainHomeNav extends StatefulWidget {
  @override
  _MainHomeNavState createState() => _MainHomeNavState();
}

class _MainHomeNavState extends State<MainHomeNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const DiscoverScreen(),
    const CartScreen(),
    const SavedScreen(),
    // const ProfileScreen(),
  ];

  final List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/home.svg'),
      activeIcon: SvgPicture.asset('assets/icons/home-a.svg'),
      label: 'Home',
      backgroundColor: white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/discover.svg'),
      activeIcon: SvgPicture.asset('assets/icons/discover-a.svg'),
      label: 'Discover',
      backgroundColor: white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/cart.svg'),
      activeIcon: SvgPicture.asset('assets/icons/cart-a.svg'),
      label: 'Cart',
      backgroundColor: white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/saved.svg'),
      activeIcon: SvgPicture.asset(
        'assets/icons/saved.svg',
        color: primary,
      ),
      label: 'Saved',
      backgroundColor: white,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: white,
        items: _navItems,
        currentIndex: _selectedIndex,
        selectedItemColor: secondary,
        onTap: _onItemTapped,
      ),
    );
  }
}
