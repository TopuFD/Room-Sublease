import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/make_friend_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/round_checkbox/custom_checkbox.dart';

class ExtrovertScreen extends StatelessWidget {
  ExtrovertScreen({super.key});

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
                width: Get.width * 0.6,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Are you more of an extrovert?",
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
                    items: makeFriend.extroPref,
                    initiallySelected: makeFriend.selcectExtro,
                    isMinimum: true,
                    onSelectionChanged: (selected) {
                      makeFriend.selcectExtro.value = selected;
                    },
                  ),
                  Expanded(child: SizedBox()),
                  CommonButton(
                    titleText: "Continue",
                    onTap: () {
                      Get.toNamed(AppRoute.politicalScreen);
                    },
                  ),
                  40.height,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
