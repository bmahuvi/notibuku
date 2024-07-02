import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  const Fab({super.key, this.onPressed, required this.iconData});

  final VoidCallback? onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(iconData),
    );
  }
}
