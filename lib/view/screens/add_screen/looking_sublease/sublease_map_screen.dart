import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/comon_screen/bottom_nav_bar_screen.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubleaseMapScreen extends StatelessWidget {
  const SubleaseMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 1,
                color: Color(0xFFE9DFD8),
              ),
              Container(
                width: Get.width * 0.8,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text:
                      "Harold, choose your preferred areas to search for a sublease?",
                  fontSize: 24,
                  bottom: 8,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Set your monthly rental budget",
                  fontSize: 16,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                mapSearchSection(),
                12.height,
                locationTagWidget(
                    title: "Nightlife, cabarets", onRemove: () {}),
                locationTagWidget(
                    title: "Nightlife, cabarets", onRemove: () {}),
                locationTagWidget(
                    title: "Nightlife, cabarets", onRemove: () {}),
                40.height,
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.subleasDoneScreen);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mapSearchSection() {
    return Stack(
      children: [
        SizedBox(
          height: 175,
          width: Get.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CommonImage(
                imageSrc: AppImage.map,
                imageType: ImageType.png,
                height: 175,
                width: Get.width,
                borderRadius: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.3),
                ), // 👈 Filter effect here
              ),
            ],
          ),
        ),

        // Search Box
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 310,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFFCF3EC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.search),
                10.width,
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search address...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget locationTagWidget({
    required String title,
    required VoidCallback onRemove,
  }) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFFCF3EC),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.location_on,
                  size: 18,
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 8),
              CommonText(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(22, 19, 18, 0.60),
              ),
            ],
          ),
          GestureDetector(
            onTap: onRemove,
            child: Icon(
              Icons.close,
              size: 20,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
