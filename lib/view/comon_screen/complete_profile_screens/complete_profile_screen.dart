import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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

// ignore: must_be_immutable
class CompleteProfileScreen extends StatelessWidget {
  CompleteProfileScreen({super.key});
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
                text: "Complete your profile!",
                fontSize: 28,
                bottom: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
                color: Color(0xFF2A2927),
                fontWeight: FontWeight.w600,
              ),
              CommonText(
                text: "Add a photo & bio to complete your profile!",
                fontSize: 16,
                color: Color.fromRGBO(42, 41, 39, 0.60),
                fontWeight: FontWeight.w500,
              ),
              32.height,

              //=====================================================================image upload
              imageUpload(),
              24.height,

              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonText(
                      text: "Harold Keith",
                      fontSize: 20,
                      bottom: 5,
                      textAlign: TextAlign.start,
                      color: Color(0xFF161312),
                      fontWeight: FontWeight.w600,
                    ),
                    CommonText(
                      text: "haroldk@gmail.com",
                      fontSize: 16,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      color: Color.fromRGBO(22, 19, 18, 0.60),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              24.height,
              CommonText(
                text: "Bio",
                fontSize: 20,
                bottom: 5,
                textAlign: TextAlign.start,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w600,
              ),

              Container(
                padding: EdgeInsets.only(left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFF3EAE3),
                    border: Border.all(color: Color(0xFFE8E8E8))),
                child: CustomTextField(
                  hindText: "Select education level",
                  fillColor: AppColors.transparent,
                  maxLines: 4,
                  textStyle: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.50),
                  ),
                  hintStyle: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.50),
                  ),
                  fieldHeight: 80,
                  fieldBorderColor: AppColors.transparent,
                ),
              ),
              33.height,
              CommonButton(titleText: "Continue",onTap: () {
                Get.toNamed(AppRoute.verifyItentity);
              },),
              24.height,
            ],
          ),
        ),
      ),
    );
  }

  imageUpload() {
    return Obx(() {
      return Column(
        children: [
          Obx(() {
            return controller.images.length < 3
                ? InkWell(
                    onTap: () async {
                      var imagePath = await OtherHelper.openGallery();
                      if (imagePath != null && imagePath.isNotEmpty) {
                        controller.images.add(imagePath);
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      height: 115,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFE6E9EA),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppIcons.upload),
                      ),
                    ),
                  )
                : SizedBox();
          }),
          Obx(() {
            return controller.images.length < 3 ? 24.height : 0.height;
          }),
          Row(
            children: [
              ...List.generate(controller.images.length, (index) {
                return AnimatedContainer(
                  duration: Duration(microseconds: 800),
                  margin: EdgeInsets.only(right: 10),
                  child: Stack(
                    children: [
                      CommonImage(
                        imageSrc: controller.images[index],
                        imageType: ImageType.file,
                        height: 106,
                        width: 110,
                        borderRadius: 16,
                      ),
                      Positioned(
                          right: 8,
                          bottom: 8,
                          child: InkWell(
                            onTap: () {
                              controller.images
                                  .remove(controller.images[index]);
                            },
                            child: Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                  color: AppColors.blueDeep,
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(AppIcons.cross),
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              })
            ],
          )
        ],
      );
    });
  }
}
