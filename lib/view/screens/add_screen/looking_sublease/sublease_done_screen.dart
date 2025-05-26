import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubleaseDoneScreen extends StatelessWidget {
  const SubleaseDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            24.height,
            CommonText(
              text:
                  "We're almost done! Before we match you with the perfect sublease, tell us a bit about yourself.",
              fontSize: 24,
              bottom: 8,
              maxLines: 10,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w600,
              color: Color(0xFF161312),
            ),
            Expanded(child: SizedBox()),
            CommonButton(titleText: "Continue",onTap: () {
              Get.toNamed(AppRoute.roomatPreferanceScreen);
            },),
            30.height,
          ],
        ),
      ),
    );
  }
}
