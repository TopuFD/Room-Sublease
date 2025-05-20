import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        surfaceTintColor: Color(0xFFE4E4E4),
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xFFE4E4E4),
        centerTitle: false,
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
        title: CommonImage(imageSrc: AppImage.ffff,imageType: ImageType.png,height: 25,width: 25,),
      
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
