import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  List image = [AppImage.onboard1, AppImage.onboard2, AppImage.onboard3];

  List title = [
    "Ready to make the move?",
    "Find your people, find your vibe",
    "Because moving is hard enough"
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: currentIndex == 0
          ? AppColors.brown50
          : currentIndex == 1
              ? AppColors.brown10
              : AppColors.brown,
    ));
    return Scaffold(
      backgroundColor: currentIndex == 0
          ? AppColors.brown50
          : currentIndex == 1
              ? AppColors.brown10
              : AppColors.brown,
      appBar: AppBar(
        surfaceTintColor: Color(0xFFE4E4E4),
        scrolledUnderElevation: 0,
        backgroundColor: currentIndex == 0
            ? AppColors.brown50
            : currentIndex == 1
                ? AppColors.brown10
                : AppColors.brown,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: 30.sp,
          ),
        ),
        title: CommonImage(
          imageSrc: AppImage.ffff,
          imageType: ImageType.png,
          height: 25,
          width: 25,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                text: title[currentIndex],
                fontSize: 50,
                top: 20,
                textAlign: TextAlign.start,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w900,
                lineHeight: 1.1,
                maxLines: 4,
              ),
            ),
            30.height,
            CommonImage(
              imageSrc: image[currentIndex],
              imageType: ImageType.png,
              height: 272,
              width: 327,
            ),
            Expanded(child: SizedBox()),
            CommonButton(
                onTap: () {
                  if (currentIndex < 2) {
                    setState(() {
                      currentIndex++;
                    });
                  } else {
                    Get.toNamed(AppRoute.signupChooserScreen);
                  }
                },
                titleText: "Next"),
            CommonButton(
              onTap: () {
                Get.toNamed(AppRoute.signupChooserScreen);
              },
              titleText: "Skip",
              buttonColor: AppColors.transparent,
              borderColor: AppColors.transparent,
              titleColor: AppColors.black,
            ),
            50.height,
          ],
        ),
      ),
    );
  }
}
