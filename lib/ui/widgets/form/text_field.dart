import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon,
    this.controller,
    this.hintText,
    this.inputBorder = InputBorder.none,
    this.disabledBorder,
    this.enabled = true,
    this.hintStyle,
  });

  final bool readOnly, enabled;
  final GestureTapCallback? onTap;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final InputBorder? inputBorder, disabledBorder;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        enabled: enabled,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
        border: inputBorder,
        disabledBorder: disabledBorder,
      ),
    );
  }
}
