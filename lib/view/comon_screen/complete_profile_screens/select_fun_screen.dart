import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SelectFunScreen extends StatelessWidget {
  SelectFunScreen({super.key});
  final CompleteProfileController controller =
      Get.find<CompleteProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.height,
              CommonText(
                text: "What do you like to do for fun?",
                fontSize: 28,
                bottom: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
                color: Color(0xFF2A2927),
                fontWeight: FontWeight.w600,
              ),
              CommonText(
                text: "Your vibe attracts your tribe. Define yours",
                fontSize: 16,
                color: Color.fromRGBO(42, 41, 39, 0.60),
                fontWeight: FontWeight.w500,
              ),
              10.height,
              Wrap(
                spacing: 10,
                children: controller.funyList.map((colorMap) {
                  final colorName = colorMap['title'] as String;
                  final color = colorMap['color'] as Color;

                  return Obx(() {
                    final isSelected =
                        controller.selectedColors.contains(colorName);

                    return GestureDetector(
                      onTap: () => controller.toggleSelection(colorName),
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.w, vertical: 5),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? color
                              : Colors.transparent, // শুধু select হলে রঙ দেখাবে
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Color(0xFFE9DFD8),
                            width: 1,
                          ), // সব গুলোর বর্ডার থাকবে
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: colorName,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF141415),
                            ),
                            if (isSelected) 8.width,
                            if (isSelected)
                              Icon(
                                Icons.check,
                                color: Colors.black,
                                size: 20,
                              ),
                          ],
                        ),
                      ),
                    );
                  });
                }).toList(),
              ),
              20.height,
              CommonButton(
                titleText: "Continue",
                onTap: () {
                  Get.toNamed(AppRoute.parsonTypeScreen);
                },
              ),
              30.height,
            ],
          ),
        ),
      ),
    );
  }
}
