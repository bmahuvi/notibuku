import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notibuku/ui/views/favourites/favourites.dart';
import 'package:notibuku/ui/views/home/home_view.dart';
import 'package:notibuku/ui/views/profile/profile.dart';
import 'package:notibuku/ui/widgets/fab.dart';
import 'package:notibuku/utils/icons.dart';

import '../ui/routes/routes.dart';

class NavProvider extends ChangeNotifier {
  int _navIndex = 0;
  final String _imgUrl = 'assets/images/avatar.jpeg';

  final List<Widget> _pages = [
    const HomeView(),
    const Favourites(),
    const Profile(),
  ];
  final List<String> _titles = [
    '',
    'Favourites',
    'Profile',
  ];
  final List<Widget?> _floatingActionButtons = [
    Fab(
      iconData: AppIcons.add,
      onPressed: () {
        Get.toNamed(AppRoutes.createNote);
      },
    ),
    null,
    null,
  ];

//Getters
  int get navIndex => _navIndex;

  String get profilePictureUrl => _imgUrl;

  String get pageTitle => _titles[_navIndex];

  Widget get page => _pages[_navIndex];

  Widget? get fab => _floatingActionButtons[_navIndex];

  //Setters
  void setNavIndex(int index) {
    _navIndex = index;
    notifyListeners();
  }
}
