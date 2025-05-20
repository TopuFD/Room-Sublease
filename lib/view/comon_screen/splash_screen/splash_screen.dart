import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Get.offAllNamed(AppRoute.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueDeep,
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonImage(
              imageSrc: AppImage.splash,
              imageType: ImageType.png,
              width: 180,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
