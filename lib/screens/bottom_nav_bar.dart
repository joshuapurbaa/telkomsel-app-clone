import 'package:flutter/material.dart';
import 'package:telkomsel_app/screens/explore/explore.dart';
import 'package:telkomsel_app/screens/home/home.dart';
import 'package:telkomsel_app/screens/menu/menu.dart';
import 'package:telkomsel_app/screens/poin/poin.dart';
import 'package:telkomsel_app/screens/shop/shop.dart';
import 'package:telkomsel_app/themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const PoinPage(),
    const ShopPage(),
    const ExplorePage(),
    const MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget customNavBar() {
      return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: bottomNavText,
        unselectedLabelStyle: bottomNavText,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/Icon-home.png',
                width: 21,
                color: _selectedIndex == 0 ? redColor : greyColor,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-trophy.png',
                width: 24,
                color: _selectedIndex == 1 ? redColor : greyColor,
              ),
            ),
            label: 'POIN',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-shop-cart.png',
                width: 25,
                color: _selectedIndex == 2 ? redColor : greyColor,
              ),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-explore.png',
                width: 27,
                color: _selectedIndex == 3 ? redColor : greyColor,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'assets/icons/icon-menu.png',
                width: 20,
                color: _selectedIndex == 4 ? redColor : greyColor,
              ),
            ),
            label: 'Menu',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customNavBar(),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
