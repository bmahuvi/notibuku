import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:notibuku/ui/views/home/search_bar.dart';
import 'package:notibuku/utils/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          Text(
            AppData.appName,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.bold, letterSpacing: 2.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              DateFormat('EEEE, MMM dd, yyyy').format(DateTime.now()),
              style: theme.textTheme.labelLarge!.copyWith(fontSize: 16),
            ),
          ),
          CustomSearchBar()
        ],
      ),
    );
  }
}
