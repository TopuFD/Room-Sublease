import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class UserPhotoScreen extends StatefulWidget {
  const UserPhotoScreen({super.key});

  @override
  State<UserPhotoScreen> createState() => _UserPhotoScreenState();
}

class _UserPhotoScreenState extends State<UserPhotoScreen> {
  final CompleteProfileController controller =
      Get.find<CompleteProfileController>();

  @override
  void initState() {
    super.initState();
    pickIdImage();
  }

  pickIdImage() async {
    controller.userImage.value = await OtherHelper.openCamera() ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CommonAppbar(
        title: "",
        bgColor: Colors.black,
        imgColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            24.height,
            CommonText(
              text: "Set your face in the frame",
              fontSize: 28,
              maxLines: 2,
              textAlign: TextAlign.start,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w600,
            ),
            32.height,
            Obx(() {
              return CommonImage(
                imageSrc: controller.userImage.value,
                imageType: ImageType.file,
                width: Get.width,
                height: 223,
                borderRadius: 30,
              );
            }),
            Expanded(child: SizedBox()),
            CommonButton(
              titleText: "Continue",
              onTap: () {

                  Get.toNamed(AppRoute.verifyWaitingScreen);
              },
              borderColor: Colors.transparent,
            ),
            40.height,
          ],
        ),
      ),
    );
  }
}
