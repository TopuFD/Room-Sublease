import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

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
                width: Get.width * 0.65,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  CommonText(
                    text: "Where would you like to live?",
                    fontSize: 24,
                    bottom: 8,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text: "Tell us where you would like to find roommates",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF616161),
                  ),
                  32.height,
            
                  //=========================================================================location
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFF3EAE3),
                          border: Border.all(color: Color(0xFFE8E8E8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 250,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter location...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                        ],
                      )),
                  24.height,
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFE9DFD8),
                        ),
                      ),
                      10.width,
                      CommonText(
                        text: "OR",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF616161),
                      ),
                      10.width,
                      Expanded(
                        child: Divider(
                          color: Color(0xFFE9DFD8),
                        ),
                      ),
                    ],
                  ),
                  24.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.location2),
                      8.width,
                      CommonText(
                        text: "Use my current location",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF3083F9),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  CommonButton(titleText: "Continue",onTap: () {
                    Get.toNamed(AppRoute.roomatPreferanceScreen);
                  },),
                  20.height,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
