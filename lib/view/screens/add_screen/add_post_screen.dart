import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:room_sublease/Utils/app_icons.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              140.height,
              CommonText(
                text: "What are you looking for?",
                fontSize: 28,
                bottom: 5,
                fontWeight: FontWeight.w600,
                color: Color(0xFF161312),
              ),
              CommonText(
                  text: "Select one to continue",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60)),
              15.height,
              Column(
                children: [
                  item(
                      ontap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                        Get.toNamed(AppRoute.locationScreen);
                      },
                      icon: AppIcons.roommat,
                      title: "Looking for Roommates",
                      desce:
                          "Find compatible roommates to apartment search with.",
                      index: 0),
                  item(
                      ontap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                        Get.toNamed(AppRoute.bringFaevScreen);
                      },
                      icon: AppIcons.subleas,
                      title: "Looking to Sublease a Space",
                      desce:
                          "Join a short or long term housing lease that fits your needs",
                      index: 1),
                  item(
                      ontap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                        Get.toNamed(AppRoute.faevScreen);
                      },
                      icon: AppIcons.friend,
                      title: "Looking to Make Friends",
                      desce: "Connect with people in your new city",
                      index: 2),
                  item(
                      ontap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      icon: AppIcons.post,
                      title: "Looking to post subleases",
                      desce: "Post your sublease details",
                      index: 3),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  item({
    required String icon,
    required String title,
    required String desce,
    required int index,
    required VoidCallback ontap,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xFFFDDEC2) : Color(0xFFF3EAE3),
          borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: ontap,
        child: Row(
          children: [
            Flexible(
              child: Row(
                children: [
                  SvgPicture.asset(
                    icon,
                  ),
                  16.width,
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: title,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF161312),
                        ),
                        CommonText(
                          text: desce,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          color: Color.fromRGBO(22, 19, 18, 0.60),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            selectedIndex == index
                ? Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 20,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
