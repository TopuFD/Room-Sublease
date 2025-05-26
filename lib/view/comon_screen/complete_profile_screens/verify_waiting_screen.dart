import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class VerifyWaitingScreen extends StatelessWidget {
  const VerifyWaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonImage(
                imageSrc: AppImage.wait,
                imageType: ImageType.png,
                height: 261,
                width: 322,
              ),
              20.height,
              CommonText(
                text: "We are verifying your identity. Please stand by...",
                fontSize: 24,
                maxLines: 2,
                fontWeight: FontWeight.w700,
                color: Color(0xFF100F0E),
              ),
              58.height,
              CommonButton(
                titleText: "Go to Home",
                onTap: () {
                  Get.toNamed(AppRoute.bottomNavScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
