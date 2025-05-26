import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class DescribeScreen extends StatefulWidget {
  const DescribeScreen({super.key});

  @override
  State<DescribeScreen> createState() => _DescribeScreenState();
}

class _DescribeScreenState extends State<DescribeScreen> {
  int selectedIndex = 0;
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
                width: Get.width * 0.5,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.height,
                CommonText(
                  text: "Which of these best describes your place?",
                  fontSize: 24,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Tell us about your place",
                  fontSize: 16,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                Row(
                  children: [
                    item(
                      title: "House",
                      index: 0,
                      icon: AppIcons.house1,
                      ontap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                    15.width,
                    item(
                      title: "Townhouse",
                      index: 1,
                      icon: AppIcons.house2,
                      ontap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
                5.height,
                Row(
                  children: [
                    item(
                      title: "Bungalow",
                      index: 2,
                      icon: AppIcons.house3,
                      ontap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                    15.width,
                    item(
                      title: "Apartment",
                      index: 3,
                      icon: AppIcons.house4,
                      ontap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.houseCountingScreen);
                  },
                ),
                40.height,
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget item({
    required String title,
    required String icon,
    required int index,
    required VoidCallback ontap,
  }) {
    return Expanded(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 106,
        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xFFFDDEC2) : Color(0xFFFCF3EC),
          border: Border.all(color: Color(0xFFE9DFD8)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              selectedIndex == index ? 20.width : SizedBox(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(icon),
                  10.height,
                  CommonText(
                    text: title,
                    fontSize: 16,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                ],
              ),
              selectedIndex == index
                  ? Row(
                      children: [
                        15.width,
                        Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
