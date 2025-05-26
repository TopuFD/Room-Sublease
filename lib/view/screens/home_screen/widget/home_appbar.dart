import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  const HomeAppbar({super.key, this.appBarHeight = 90});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFCF3EC),
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: appBarHeight,
      title: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: "Fahad Al-Mutairi",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoute.notificationScreen);
                  },
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.primaryColor),
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: SvgPicture.asset(
                        AppIcons.notification,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ),
                ),
                16.width,
                InkWell(
                  onTap: () {
                    BottomNavController.instance.selectedIndex.value = 3;
                  },
                  child: CommonImage(
                    imageSrc:
                        "https://www.shutterstock.com/image-photo/portrait-one-young-happy-cheerful-600nw-1980856400.jpg",
                    imageType: ImageType.network,
                    height: 46,
                    width: 46,
                    borderRadius: 100.r,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight.h);
}
