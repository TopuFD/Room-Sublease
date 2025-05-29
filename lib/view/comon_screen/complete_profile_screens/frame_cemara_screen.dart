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

class FrameCemaraScreen extends StatefulWidget {
  const FrameCemaraScreen({super.key});

  @override
  State<FrameCemaraScreen> createState() => _FrameCemaraScreenState();
}

class _FrameCemaraScreenState extends State<FrameCemaraScreen> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            24.height,
            CommonText(
              text: "Place the front of your ID in the frame.",
              fontSize: 28,
              maxLines: 2,
              textAlign: TextAlign.start,
              color: Colors.white,
            ),
            40.height,
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 223,
                  width: 343,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Obx(() {
                  return profile.idImage.isNotEmpty
                      ? CommonImage(
                          imageSrc: profile.idImage.value,
                          imageType: ImageType.file,
                          height: 200,
                          width: 300,
                        )
                      : CommonImage(
                          imageSrc: AppImage.id,
                          imageType: ImageType.png,
                          height: 200,
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
                  titleText: profile.idImage.isEmpty ? "Capture" : "Retake",
                  onTap: () async {
                    String image = await OtherHelper.openCamera() ?? "";
                    profile.idImage.value = image;
                  },
                  borderColor: Colors.transparent,
                );
              }),
            ),
            20.height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CommonButton(
                titleText: "Continue",
                onTap: () {
                  Get.toNamed(AppRoute.roundedCameraScreen);
                },
                borderColor: Colors.transparent,
              ),
            ),
            // Obx(() {
            //   return profile.idImage.isNotEmpty
            //       ? Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 16),
            //           child: CommonButton(
            //             titleText: "Continue",
            //             onTap: () {
            //               Get.toNamed(AppRoute.roundedCameraScreen);
            //             },
            //             borderColor: Colors.transparent,
            //           ),
            //         )
            //       : SizedBox();
            // }),
            40.height,
          ],
        ),
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
    // প্রথমে ফ্রেম ইমেজ পুরো রেক্ট্যাঙ্গুলার এলাকায় আঁকো
    paintImage(
      canvas: canvas,
      rect: Rect.fromLTWH(0, 0, size.width, size.height),
      image: frameImage,
      fit: BoxFit.cover,
    );

    // এখন রেক্ট্যাঙ্গুলার বর্ডার আঁকো
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    // বর্ডারের চারপাশে ছোট tick line এড করবো
    final tickPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 1;

    final tickLength = 8.0;
    final tickCountPerSide = 15; // প্রতি পাশে টিকের সংখ্যা

    // টিকগুলো চারপাশে সমান ভাগে ভাগ করে রাখবো

    // Top side ticks
    for (int i = 0; i <= tickCountPerSide; i++) {
      final dx = (size.width / tickCountPerSide) * i;
      canvas.drawLine(Offset(dx, 0), Offset(dx, tickLength), tickPaint);
    }

    // Bottom side ticks
    for (int i = 0; i <= tickCountPerSide; i++) {
      final dx = (size.width / tickCountPerSide) * i;
      canvas.drawLine(Offset(dx, size.height),
          Offset(dx, size.height - tickLength), tickPaint);
    }

    // Left side ticks
    for (int i = 0; i <= tickCountPerSide; i++) {
      final dy = (size.height / tickCountPerSide) * i;
      canvas.drawLine(Offset(0, dy), Offset(tickLength, dy), tickPaint);
    }

    // Right side ticks
    for (int i = 0; i <= tickCountPerSide; i++) {
      final dy = (size.height / tickCountPerSide) * i;
      canvas.drawLine(Offset(size.width, dy),
          Offset(size.width - tickLength, dy), tickPaint);
    }
  }

  @override
  bool shouldRepaint(covariant FramePainter oldDelegate) =>
      oldDelegate.frameImage != frameImage;
}
