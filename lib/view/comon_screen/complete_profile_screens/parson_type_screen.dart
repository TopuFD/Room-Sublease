import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class ParsonTypeScreen extends StatelessWidget {
  ParsonTypeScreen({super.key});
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
              10.height,
              CommonText(
                text: "What kind of person are you?",
                fontSize: 28,
                bottom: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
                color: Color(0xFF2A2927),
                fontWeight: FontWeight.w600,
              ),
              CommonText(
                text: "Select what describes you",
                fontSize: 16,
                color: Color.fromRGBO(42, 41, 39, 0.60),
                fontWeight: FontWeight.w500,
              ),
              10.height,
              Wrap(
                spacing: 10,
                children: controller.parsonList.map((colorMap) {
                  final colorName = colorMap['title'] as String;
                  final color = colorMap['color'] as Color;
                  final isBorder = colorMap['isBorder'] as bool;

                  return Obx(() {
                    final isSelected =
                        controller.selectedParson.contains(colorName);

                    return GestureDetector(
                      onTap: () => controller.toggleParson(colorName),
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.w, vertical: 5),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(100),
                          border: isBorder == true
                              ? Border.all(color: Color(0xFFE9DFD8), width: 1)
                              : null,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: colorName,
                              fontSize: 13,
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
                  Get.toNamed(AppRoute.yourselfScreen);
                },
              ),
              20.height,
            ],
          ),
        ),
      ),
    );
  }
}
