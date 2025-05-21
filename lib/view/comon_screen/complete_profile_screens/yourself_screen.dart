import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/custom_text_field/custom_text_field.dart';

class YourselfScreen extends StatelessWidget {
  YourselfScreen({super.key});
  final CompleteProfileController controller =
      Get.find<CompleteProfileController>();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      appBar: CommonAppbar(title: ""),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.height,
              CommonText(
                text: "Tell us about yourself?",
                fontSize: 28,
                bottom: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
                color: Color(0xFF2A2927),
                fontWeight: FontWeight.w600,
              ),
              CommonText(
                text: "Pick your priorities—we’ll handle the search.",
                fontSize: 16,
                color: Color.fromRGBO(42, 41, 39, 0.60),
                fontWeight: FontWeight.w500,
              ),
              32.height,
              Form(
                  child: Column(
                children: [
                  CustomTextField(
                    titleText: "Name",
                    hindText: "Write your name",
                  ),
                  24.height,
                  CustomTextField(
                    titleText: "Your age",
                    hindText: "DD/MM/YYYY",
                    suffixIcon: SvgPicture.asset(AppIcons.date),
                  ),
                ],
              )),
              24.height,
              CommonText(
                text: "Select gender",
                fontSize: 16,
                textAlign: TextAlign.start,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w600,
              ),
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(controller.genderList.length, (index) {
                    return Obx(() {
                      return InkWell(
                        onTap: () {
                          controller.selectedGender.value =
                              controller.genderList[index];
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 600),
                          height: 90,
                          width: 115,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: controller.selectedGender.value ==
                                      controller.genderList[index]
                                  ? null
                                  : Border.all(color: Color(0xFFE9DFD8)),
                              color: controller.selectedGender.value ==
                                      controller.genderList[index]
                                  ? Color(0xFFFDDEC3)
                                  : Color(0xFFFCF3EC)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                controller.selectedGender.value ==
                                        controller.genderList[index]
                                    ? Icon(
                                        Icons.check,
                                        size: 20,
                                        color: AppColors.black,
                                      )
                                    : SizedBox(),
                                15.height,
                                CommonText(
                                  text: controller.genderList[index],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF161312),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                  })
                ],
              ),
              24.height,
              CustomTextField(
                titleText: "What’s your job title?",
                hindText: "Choose school",
              ),
              24.height,
              CustomTextField(
                titleText: "Where did you go to school?",
                hindText: "Enter your job title",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
              24.height,
              CustomTextField(
                titleText: "What's your education level?",
                hindText: "Select education level",
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
              24.height,
              CommonText(
                text: "How Would You Decorate Your Dream Apartment?",
                fontSize: 16,
                maxLines: 2,
                textAlign: TextAlign.start,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w600,
              ),
              6.height,
              CommonText(
                text: "Upload your dream Pinterest apartment image here",
                fontSize: 14,
                color: Color.fromRGBO(22, 19, 18, 0.60),
                fontWeight: FontWeight.w500,
              ),
              16.height,
              //=====================================================================image upload
              imageUpload(),
              24.height,
              CommonText(
                text: "Add your social link",
                fontSize: 16,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w600,
              ),
              16.height,
              Container(
                padding: EdgeInsets.only(left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFF3EAE3),
                    border: Border.all(color: Color(0xFFE8E8E8))),
                child: CustomTextField(
                  hindText: "Select education level",
                  fillColor: AppColors.transparent,
                  fieldBorderColor: AppColors.transparent,
                  suffixIcon: SvgPicture.asset(AppIcons.instagram),
                ),
              ),
              24.height,
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

  imageUpload() {
    return Row(
      children: [
        Obx(() {
          return Row(
            children: [
              if (controller.images.isNotEmpty)
                ...List.generate(controller.images.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Stack(
                      children: [
                        CommonImage(
                          imageSrc: controller.images[index],
                          imageType: ImageType.file,
                          height: 96,
                          width: 100,
                          borderRadius: 16,
                        ),
                        Positioned(
                            right: 10,
                            top: 10,
                            child: InkWell(
                              onTap: () {
                                controller.images
                                    .remove(controller.images[index]);
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(color: Colors.red),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.red,
                                  size: 15,
                                ),
                              ),
                            ))
                      ],
                    ),
                  );
                })
            ],
          );
        }),
        Obx(() {
          return controller.images.length < 3
              ? InkWell(
                  onTap: () async {
                    var imagePath = await OtherHelper.openGallery();
                    if (imagePath != null && imagePath.isNotEmpty) {
                      controller.images.add(imagePath);
                    }
                  },
                  child: Container(
                    height: 96,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFE6E9EA),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                )
              : SizedBox();
        }),
      ],
    );
  }
}
