import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/icons.dart';
import '../../widgets/form/text_field.dart';
import 'search_notibuku.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppData.mainPadding),
      child: CustomTextField(
        readOnly: true,
        suffixIcon: const Icon(AppIcons.search),
        hintText: 'Find your notes',
        hintStyle: const TextStyle(fontSize: 18),
        onTap: () {
          Get.to(
            () => const SearchNotibuku(),
            transition: Transition.downToUp,
            fullscreenDialog: true,
          );
        },
        inputBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
