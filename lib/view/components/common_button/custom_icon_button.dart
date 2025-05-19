
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/extentions/extentions.dart';

import '../../../utils/app_color.dart';
import '../common_text/common_text.dart';

GestureDetector customIconButton(
    {required VoidCallback onTap,
    required String buttonText,
    required Widget buttonIcon,
    bool isLoading = false,
    double borderRadius = 16,
    double buttonHeight = 56,
    double buttonWidth = 30,
    required Color color,
    double textSize = 20,
    Color textColor =AppColors.white
    }) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: buttonHeight.h,
      // padding: EdgeInsets.symmetric(
      //     horizontal: buttonWidth.w, vertical: buttonHeight.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: color,
      ),
      child: isLoading
          ? SizedBox(
              height: 28,
              width: Get.width,
              child: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                      child: CircularProgressIndicator(
                    color: AppColors.white,
                  ))),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  text: buttonText,
                  color:textColor ,
                  fontSize: textSize,
                ),
                10.width,
                buttonIcon,
              ],
            ),
    ),
  );
}
