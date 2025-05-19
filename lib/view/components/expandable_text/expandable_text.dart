import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/expandable_text_controller.dart';

// ignore: must_be_immutable
class ExpandableText extends StatelessWidget {
  String? myDesce;

  ExpandableText({super.key, this.myDesce});

  final ExpandableTextController expandController =
      Get.find<ExpandableTextController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedSize(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myDesce ?? "",
              maxLines: expandController.isExpanded.value == true ? 20 : 3,
              overflow: expandController.isExpanded.value == true
                  ? TextOverflow.visible
                  : TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF0C0C0C),
              ),
              textAlign: TextAlign.justify,
            ),
            // 2.height,
            GestureDetector(
              onTap: () {
                expandController.updateBool();
              },
              child: Text(
                textAlign: TextAlign.left,
                expandController.isExpanded.value == true
                    ? "View less..."
                    : "View more...",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0C0C0C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
