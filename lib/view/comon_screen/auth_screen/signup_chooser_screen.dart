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

class SignupChooserScreen extends StatelessWidget {
  const SignupChooserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.blue50,
      appBar: AppBar(
        surfaceTintColor: Color(0xFFE4E4E4),
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.blue50,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            CommonImage(
              imageSrc: AppImage.welcome,
              imageType: ImageType.png,
              height: 200,
              width: 330,
            ),
            150.height,
            CommonButton(
                onTap: () {
                  Get.toNamed(AppRoute.signinScreen);
                },
                titleText: "Next"),
            CommonButton(
              onTap: () {},
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
