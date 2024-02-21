import 'package:e_commerce/features/authentication/view/home_screen.dart';
import 'package:e_commerce/features/authentication/view/profile.dart';
import 'package:e_commerce/features/authentication/view/setting.dart';
import 'package:e_commerce/features/authentication/view/store.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentIndex = 0;

  final List<Widget> widgetOptions = const [
    HomeScreen(),
    Setting(),
    Profile(),
    Store(),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        duration: const Duration(microseconds: 300),
        curve: Curves.bounceIn,
        selectedItemColor: dark ? MyColors.lightGrey : MyColors.dark,
        unselectedItemColor: MyColors.darkerGrey,
        selectedColorOpacity: 0.1,
        backgroundColor: dark ? MyColors.dark.withOpacity(0.05) : Colors.white,
        itemPadding: const EdgeInsets.all(16),
        currentIndex: currentIndex,
        onTap: (value) {
          // TODO make this stateless widget and put it method in cubit class
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.home),
            title: const Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.shop),
            title: const Text('Store'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.heart),
            title: const Text('Wishlist'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Iconsax.user),
            title: const Text('Profile'),
          ),
        ],
      ),
      body: widgetOptions.elementAt(currentIndex),
    );
  }
}