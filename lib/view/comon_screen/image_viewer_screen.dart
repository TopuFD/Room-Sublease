import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';

// ignore: must_be_immutable
class ImageViewerScreen extends StatelessWidget {
  ImageViewerScreen({super.key});

  var image = Get.arguments["image"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InteractiveViewer(
        minScale: 1.0,
        maxScale: 4.0,
        child: Center(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: CommonImage(
              height: Get.height,
              width: Get.width,
              imageType: ImageType.jpg,
              borderRadius: 0,
              imageSrc: image,
            ),
          ),
        ),
      ),
    );
  }
}
