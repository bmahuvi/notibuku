import 'package:flutter/material.dart';
import 'package:notibuku/providers/nav_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/icons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavProvider>(
      builder: (_, provider, child) => NavigationBar(
        selectedIndex: provider.navIndex,
        onDestinationSelected: (index) {
          provider.setNavIndex(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(AppIcons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.favourite),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
