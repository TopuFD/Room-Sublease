import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/utils/app_string.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: AppString.notification),
      body: SizedBox(
        width: Get.width,
        child: Column(
          children: [
            notificationItem(title: "Your Account is Verified successfull"),
            10.height,
            notificationItem(title: "New Roommat is mached"),
            10.height,
            notificationItem(title: "Your Account is Verified successfull"),
            10.height,
            notificationItem(title: "New Roommat is mached"),
            10.height,
            notificationItem(title: "Your Account is Verified successfull"),
            10.height,
            notificationItem(title: "New Roommat is mached"),
            10.height,
            
          ],
        ),
      ),
    );
  }

  notificationItem({
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      color: Color(0xFFADD9DA),
      child: Row(
        children: [
          10.width,
          SvgPicture.asset(AppIcons.visibilityOff),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: "New Roommat is Come",
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              CommonText(
                text: "16 minutes ago",
                fontSize: 15,
                maxLines: 3,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
