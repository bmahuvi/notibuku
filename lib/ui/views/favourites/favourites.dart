import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text('Item $index'),
      ),
      itemCount: 24,
    );
  }
}
