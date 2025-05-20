import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/extentions/extentions.dart';
import '../../../utils/app_color.dart';

import '../common_text/common_text.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color? borderColor;
  final double borderWidth;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double buttonWidth;
  final Widget? icon;
  final double strokeWidth;

  final bool isLoading;

  const CommonButton(
      {this.onTap,
      required this.titleText,
      this.titleColor = AppColors.white,
      this.buttonColor = AppColors.blueDeep,
      this.titleSize = 20,
      this.buttonRadius = 50,
      this.titleWeight = FontWeight.w500,
      this.buttonHeight = 56,
      this.borderWidth = 1,
      this.isLoading = false,
      this.buttonWidth = double.infinity,
      this.borderColor = AppColors.primaryColor,
      this.strokeWidth = 4,
      this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight.h,
      width: buttonWidth.w,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            backgroundColor: WidgetStateProperty.all(buttonColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius.r),
                side: BorderSide(
                    color: borderColor ?? AppColors.primaryColor,
                    width: borderWidth.w),
              ),
            ),
            elevation: WidgetStateProperty.all(0)),
        child: isLoading
            ? Platform.isIOS
                ? const CupertinoActivityIndicator(
                    color: AppColors.white,
                  )
                : CircularProgressIndicator(
                    color: AppColors.white,
                    strokeWidth: strokeWidth,
                  )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null) 8.width,
                  CommonText(
                    text: titleText,
                    fontSize: titleSize,
                    fontWeight: titleWeight,
                    textAlign: TextAlign.center,
                    color: titleColor,
                  ),
                ],
              ),
      ),
    );
  }
}
