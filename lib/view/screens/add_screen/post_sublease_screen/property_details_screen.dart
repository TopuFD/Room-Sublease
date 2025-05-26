import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class PropertyDetailsScreen extends StatelessWidget {
  const PropertyDetailsScreen({super.key});
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
                width: Get.width * 0.2,
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
                  text: "Share your property details and",
                  fontSize: 24,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Tell us more about your sublease",
                  fontSize: 16,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                CommonText(
                  text: "Tell us about your place",
                  fontSize: 16,
                  bottom: 8,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text:
                      "Share some basic information, like the address, number of bedroom, living, kitchen & floor plans",
                  fontSize: 14,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                24.height,
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5E2D1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppIcons.ask),
                      5.width,
                      SizedBox(
                        width: 275,
                        child: CommonText(
                          text:
                              "We will ensure that your address remains private until you share it with potential roommates.",
                          fontSize: 16,
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF161312),
                        ),
                      ),
                    ],
                  ),
                ),
                24.height,
                CommonText(
                  text: "Share details about you",
                  fontSize: 16,
                  bottom: 8,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                SizedBox(
                  width: 300,
                  child: CommonText(
                    text:
                        "Share some personal details about yourself to help us find the perfect fit",
                    fontSize: 14,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.60),
                  ),
                ),
                Expanded(child: SizedBox()),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.liveAddress);
                  },
                ),
                24.height,
              ],
            ),
          ))
        ],
      ),
    );
  }

}
