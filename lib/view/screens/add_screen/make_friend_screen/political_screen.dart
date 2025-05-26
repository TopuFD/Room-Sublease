import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/make_friend_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/round_checkbox/custom_checkbox.dart';

class PoliticalScreen extends StatelessWidget {
  PoliticalScreen({super.key});

  final MakeFriendController makeFriend = Get.find<MakeFriendController>();

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
                width: Get.width * 0.7,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "Which political party do you affiliate with",
                      fontSize: 24,
                      bottom: 5,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF161312),
                    ),
                    CommonText(
                      text: "Tell us more about you",
                      fontSize: 16,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(22, 19, 18, 0.60),
                    ),
                    32.height,
                    CustomCheckbox(
                      items: makeFriend.politicalPref,
                      initiallySelected: makeFriend.selcectpolitacalPref,
                      isMinimum: false,
                      onSelectionChanged: (selected) {
                        makeFriend.selcectpolitacalPref.value = selected;
                      },
                    ),
                    24.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: "Display preference on profile",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF161312),
                        ),
                        Transform.scale(
                          scale: 1.3,
                          child: Obx(() {
                            return Checkbox(
                              value: makeFriend.isDeal.value,
                              fillColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              checkColor: Colors.black,
                              onChanged: (value) {
                                makeFriend.isDeal.value = value ?? false;
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side:
                                  WidgetStateBorderSide.resolveWith((states) {
                                if (states.contains(WidgetState.selected)) {
                                  return BorderSide(
                                      color: Color(0xFFE9DFD8),
                                      width: 2); // active border
                                }
                                return BorderSide(
                                    color: Color(0xFFE9DFD8),
                                    width: 2); // inactive border
                              }),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity:
                                  VisualDensity(horizontal: -4, vertical: -4),
                            );
                          }),
                        )
                      ],
                    ),
                    32.height,
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
                                  "Your answer is hidden from your profile unless you want to disclose it. This is purely for algorithm matching!",
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
                    CommonButton(
                      titleText: "Continue",
                      onTap: () {
                        Get.toNamed(AppRoute.ofenoutScreen);
                      },
                    ),
                    40.height,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
