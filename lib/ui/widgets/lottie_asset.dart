import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAsset extends StatelessWidget {
  const LottieAsset({super.key, required this.asset, this.width, this.height});
  final String asset;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      asset,
      width: width,
      height: height,
    );
  }
}
