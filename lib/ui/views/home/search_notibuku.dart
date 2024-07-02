import 'package:flutter/material.dart';
import 'package:notibuku/utils/constants.dart';
import 'package:notibuku/utils/icons.dart';

class SearchNotibuku extends StatelessWidget {
  const SearchNotibuku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppData.mainPadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: AppData.mainPadding),
              child: SearchBar(
                autoFocus: true,
                leading: const Icon(AppIcons.search),
                padding: WidgetStateProperty.all(
                    const EdgeInsets.only(left: 16, right: 24)),
                textStyle:
                    WidgetStateProperty.all(const TextStyle(fontSize: 18)),
              ),
            ),
            const Expanded(child: Text('Search results...')),
          ],
        ),
      ),
    );
  }
}
