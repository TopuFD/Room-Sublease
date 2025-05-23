import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/profile_controller/edit_profile_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class FunActivity extends StatelessWidget {
  FunActivity({super.key});
  final EditProfileController editProfileController =
      Get.find<EditProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              70.height,
              Wrap(
                spacing: 10,
                children: editProfileController.funyList.map((colorMap) {
                  final colorName = colorMap['title'] as String;
                  final color = colorMap['color'] as Color;
                  final isBorder = colorMap['isBorder'] as bool;

                  return Obx(() {
                    final isSelected = editProfileController.selectedColors
                        .contains(colorName);

                    return GestureDetector(
                      onTap: () =>
                          editProfileController.toggleSelection(colorName),
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
                  Get.back();
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
