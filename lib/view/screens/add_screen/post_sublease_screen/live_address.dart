import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class LiveAddress extends StatelessWidget {
  const LiveAddress({super.key});
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
                width: Get.width * 0.3,
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
                  text: "Where do you live?",
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
                Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF3EAE3),
                        border: Border.all(color: Color(0xFFE8E8E8))),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter location...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.search),
                        10.width
                      ],
                    )),
                24.height,
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xFFE9DFD8),
                    )),
                    10.width,
                    CommonText(
                      text: "OR",
                      fontSize: 16,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(42, 41, 39, 0.50),
                    ),
                    10.width,
                    Expanded(
                        child: Divider(
                      color: Color(0xFFE9DFD8),
                    )),
                  ],
                ),
                24.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.location2),
                    5.width,
                    CommonText(
                      text: "Use my current location",
                      fontSize: 16,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3083F9),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.describeScreen);
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

}
