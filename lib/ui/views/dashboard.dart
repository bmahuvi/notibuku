import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notibuku/providers/nav_provider.dart';
import 'package:notibuku/ui/routes/routes.dart';
import 'package:notibuku/ui/widgets/bottom_nav_bar.dart';
import 'package:notibuku/utils/icons.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<NavProvider>(
            builder: (_, provider, child) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(provider.profilePictureUrl),
                  ),
                )),
        title: Consumer<NavProvider>(
            builder: (_, provider, child) => Text(provider.pageTitle)),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.settings);
              },
              icon: const Icon(AppIcons.settings)),
          IconButton(
            onPressed: () {},
            icon: Badge.count(
              count: 2,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: const Icon(AppIcons.bell),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Consumer<NavProvider>(
              builder: (_, provider, child) => provider.page)),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Consumer<NavProvider>(
          builder: (_, provider, child) =>
              provider.fab ?? const SizedBox.shrink()),
    );
  }
}
