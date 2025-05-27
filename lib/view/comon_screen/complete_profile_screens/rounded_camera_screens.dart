import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

Future<ui.Image> loadUiImage(String assetPath) async {
  final data = await rootBundle.load(assetPath);
  final bytes = data.buffer.asUint8List();
  final codec = await ui.instantiateImageCodec(bytes);
  final frame = await codec.getNextFrame();
  return frame.image;
}

class FrameWithImagePicker extends StatefulWidget {
  const FrameWithImagePicker({super.key});

  @override
  State<FrameWithImagePicker> createState() => _FrameWithImagePickerState();
}

class _FrameWithImagePickerState extends State<FrameWithImagePicker> {
  ui.Image? frameImage;
  final CompleteProfileController profile =
      Get.put(CompleteProfileController());

  @override
  void initState() {
    super.initState();
    loadUiImage(AppImage.frame).then((img) {
      setState(() {
        frameImage = img;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CommonAppbar(
        title: "",
        bgColor: Colors.black,
        imgColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          24.height,
          CommonText(
            text: "Set your face in the frame",
            fontSize: 28,
            color: Colors.white,
          ),
          40.height,
          Stack(
            alignment: Alignment.center,
            children: [
              if (frameImage != null)
                SizedBox(
                  width: 295,
                  height: 385,
                  child: CustomPaint(
                    painter: FramePainter(frameImage!),
                  ),
                ),
              Obx(() {
                return profile.userImage.isNotEmpty
                    ? ClipOval(
                        child: CommonImage(
                          imageSrc: profile.userImage.value,
                          imageType: ImageType.file,
                          height: 410,
                          width: 300,
                        ),
                      )
                    : CommonImage(
                        imageSrc: AppImage.user,
                        imageType: ImageType.png,
                        height: 410,
                        width: 300,
                      );
              }),
            ],
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Obx(() {
              return CommonButton(
                titleText: profile.userImage.isEmpty ? "Capture" : "Retake",
                onTap: () async {
                  String image = await OtherHelper.openCamera() ?? "";
                  profile.userImage.value = image;
                },
                borderColor: Colors.transparent,
              );
            }),
          ),
          20.height,
          Obx(() {
            return profile.userImage.isNotEmpty
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: CommonButton(
                      titleText: "Continue",
                      onTap: () {
                        Get.toNamed(AppRoute.verifyWaitingScreen);
                      },
                      borderColor: Colors.transparent,
                    ),
                  )
                : SizedBox();
          }),
          40.height,
        ],
      ),
    );
  }
}

// ফ্রেম ইমেজ ড্র করার জন্য CustomPainter
class FramePainter extends CustomPainter {
  final ui.Image frameImage;

  FramePainter(this.frameImage);

  @override
  void paint(Canvas canvas, Size size) {
    paintImage(
      canvas: canvas,
      rect: Rect.fromLTWH(0, 0, size.width, size.height),
      image: frameImage,
      fit: BoxFit.cover,
    );
  }

  @override
  bool shouldRepaint(covariant FramePainter oldDelegate) =>
      oldDelegate.frameImage != frameImage;
}
