import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  Color bgColor;

  CommonAppbar({
    super.key,
    required this.title,
    this.bgColor = const Color(0xFFFCF3EC),
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Color(0xFFFCF3EC),
      scrolledUnderElevation: 0,
      backgroundColor: bgColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back,
          size: 30.sp,
        ),
      ),
      title: title.isNotEmpty
          ? CommonText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF161312),
            )
          : CommonImage(
              imageSrc: AppImage.ffff,
              imageType: ImageType.png,
              height: 25,
              width: 25,
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
