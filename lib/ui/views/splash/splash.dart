import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:notibuku/ui/widgets/lottie_asset.dart';

import '../../../utils/constants.dart';
import '../../routes/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: AppData.secondsForSplash),
        () => Get.offAllNamed(AppRoutes.home));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = Get.width;
    final height = Get.height;
    return Scaffold(
        body: SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieAsset(
            asset: 'assets/json/notebooks.json',
            width: width * 0.9,
          ),
          Text(
            AppData.appName,
            style: theme.textTheme.displayLarge,
          )
        ],
      ),
    ));
  }
}
