import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_sublease/Utils/app_icons.dart';
import 'package:room_sublease/controller/profile_controller/edit_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/custom_text_field/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final EditProfileController profile = Get.find<EditProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Edit Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(0),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.blueDeep)),
                      child: Obx(() {
                        return profile.image.isNotEmpty
                            ? CommonImage(
                                imageSrc: profile.image.value,
                                imageType: ImageType.file,
                                height: 90,
                                width: 90,
                                borderRadius: 100,
                              )
                            : Center(
                                child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: SvgPicture.asset(AppIcons.profile)));
                      }),
                    ),
                    Positioned(
                        right: 2,
                        bottom: 2,
                        child: InkWell(
                            onTap: () async {
                              var pickImage = await OtherHelper.openGallery();
                              profile.image.value = pickImage ?? "";
                            },
                            child: SvgPicture.asset(AppIcons.edit2))),
                  ],
                ),
              ),

              //======================================================================other data
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
                  ...List.generate(profile.genderList.length, (index) {
                    return Obx(() {
                      return InkWell(
                        onTap: () {
                          profile.selectedGender.value =
                              profile.genderList[index];
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 600),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: profile.selectedGender.value ==
                                      profile.genderList[index]
                                  ? null
                                  : Border.all(color: Color(0xFFE9DFD8)),
                              color: profile.selectedGender.value ==
                                      profile.genderList[index]
                                  ? Color(0xFFFDDEC3)
                                  : Color(0xFFFCF3EC)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                profile.selectedGender.value ==
                                        profile.genderList[index]
                                    ? Icon(
                                        Icons.check,
                                        size: 20,
                                        color: AppColors.black,
                                      )
                                    : SizedBox(),
                                15.height,
                                CommonText(
                                  text: profile.genderList[index],
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
              CommonText(
                text: "Bio",
                fontSize: 16,
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
                  hindText: "Write your bio",
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
                text: "Show us how you would decorate your dream apartment",
                fontSize: 14,
                maxLines: 2,
                textAlign: TextAlign.start,
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
              //=========================================================================insta gram
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFF3EAE3),
                    border: Border.all(color: Color(0xFFE8E8E8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "amelia_2000",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppIcons.instagram),
                      ),
                  ],
                )
              ),

              24.height,
              //=========================================================================fun activity
              CommonText(
                text: "Fun Activities",
                fontSize: 16,
                color: Color(0xFF161312),
                fontWeight: FontWeight.w600,
              ),
              16.height,
              Container(
                  padding: EdgeInsets.only(left: 10,top: 8,bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF3EAE3),
                      border: Border.all(color: Color(0xFFE8E8E8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profile.selectedColors.isNotEmpty
                          ? Flexible(child: funyActivity())
                          : CommonText(
                              text: "Select Fun Activities",
                              fontSize: 14,
                              left: 8,
                              color: Color.fromRGBO(22, 19, 18, 0.60),
                              fontWeight: FontWeight.w600,
                            ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoute.funActivity);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ),
                    ],
                  )),
              30.height,
            ],
          ),
        ),
      ),
    );
  }

  // funyActivity() {
  //   return Wrap(
  //     spacing: 10,
  //     children: profile.funyList.map((colorMap) {
  //       final colorName = colorMap['title'] as String;
  //       final color = colorMap['color'] as Color;
  //       final isBorder = colorMap['isBorder'] as bool;

  //       return Obx(() {
  //         final isSelected = profile.selectedColors.contains(colorName);
  //         return isSelected
  //             ? Container(
  //                 height: 50,
  //                 margin: EdgeInsets.symmetric(vertical: 5.h),
  //                 padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5),
  //                 decoration: BoxDecoration(
  //                   color: color,
  //                   borderRadius: BorderRadius.circular(100),
  //                   border: isBorder == true
  //                       ? Border.all(color: Color(0xFFE9DFD8), width: 1)
  //                       : null,
  //                 ),
  //                 child: Row(
  //                   mainAxisSize: MainAxisSize.min,
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     CommonText(
  //                       text: colorName,
  //                       fontSize: 14,
  //                       fontWeight: FontWeight.w500,
  //                       color: Color(0xFF141415),
  //                     ),
  //                     if (isSelected) 8.width,
  //                     if (isSelected)
  //                       Icon(
  //                         Icons.check,
  //                         color: Colors.black,
  //                         size: 20,
  //                       ),
  //                   ],
  //                 ),
  //               )
  //             : SizedBox();
  //       });
  //     }).toList(),
  //   );
  // }
  funyActivity() {
  return Wrap(
    spacing: 10,
    children: profile.funyList.map((colorMap) {
      final colorName = colorMap['title'] as String;
      final originalColor = colorMap['color'] as Color;
      final isBorder = colorMap['isBorder'] as bool;

      return Obx(() {
        final isSelected = profile.selectedColors.contains(colorName);

        return Container(
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 5.h),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5),
          decoration: BoxDecoration(
            color: isSelected == false ? Color(0xFFFCF3EC) : originalColor,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Color(0xFFE9DFD8), width: 1),
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
              if (isSelected) SizedBox(width: 8.w),
              if (isSelected)
                Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 20,
                ),
            ],
          ),
        );
      });
    }).toList(),
  );
}


  imageUpload() {
    return Row(
      children: [
        Obx(() {
          return Row(
            children: [
              if (profile.images.isNotEmpty)
                ...List.generate(profile.images.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Stack(
                      children: [
                        CommonImage(
                          imageSrc: profile.images[index],
                          imageType: ImageType.file,
                          height: 96,
                          width: 100,
                          borderRadius: 16,
                        ),
                        Positioned(
                            right: 4,
                            top: 4,
                            child: InkWell(
                              onTap: () {
                                profile.images.remove(profile.images[index]);
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: AppColors.black,
                                    
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: SvgPicture.asset(AppIcons.cross2),
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
          return profile.images.length < 3
              ? InkWell(
                  onTap: () async {
                    var imagePath = await OtherHelper.openGallery();
                    if (imagePath != null && imagePath.isNotEmpty) {
                      profile.images.add(imagePath);
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
