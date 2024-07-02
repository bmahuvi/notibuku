import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notibuku/providers/theme_provider.dart';
import 'package:notibuku/utils/icons.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key, this.pageTitle = 'Settings'}) : super(key: key);
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: ListView(
        children: [
          Consumer<ThemeProvider>(
            builder: (_, provider, child) => ListTile(
              leading: Get.isDarkMode
                  ? const Icon(AppIcons.moon)
                  : const Icon(AppIcons.sun),
              onTap: () {
                provider.toggleThemeMode(context);
              },
              title: const Text('Change theme mode'),
              subtitle: Text(
                  Get.isDarkMode ? 'Tap for light mode' : 'Tap for dark mode'),
              trailing: const Icon(AppIcons.angleRight),
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
