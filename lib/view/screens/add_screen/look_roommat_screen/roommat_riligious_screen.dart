import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class RoommatRiligiousScreen extends StatefulWidget {
  const RoommatRiligiousScreen({super.key});

  @override
  State<RoommatRiligiousScreen> createState() => _RoommatRiligiousScreenState();
}

class _RoommatRiligiousScreenState extends State<RoommatRiligiousScreen> {
  bool isDeal = false;
  bool isDisplay = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Religious preference"),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.height,
            CommonText(
              text: "Religious preference",
              fontSize: 16,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w600,
              color: Color(0xFF161312),
            ),
            24.height,
            Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFF3EAE3),
                    border: Border.all(color: Color(0xFFE8E8E8))),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Your religion",
                    border: InputBorder.none,
                  ),
                )),
            24.height,
            Divider(color: Color(0xFFE9DFD8)),
            24.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                  text: "Dealbreaker",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                Switch(
                  activeColor: Color(0xFF34C759),
                  thumbColor: WidgetStateProperty.all(Colors.white),
                  value: isDeal,
                  onChanged: (value) {
                    setState(() {
                      isDeal = value;
                    });
                  },
                )
              ],
            ),
            32.height,
            Column(
              children: [
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
                      child: Checkbox(
                        value: isDisplay,
                        fillColor:
                            WidgetStateProperty.all(Colors.transparent),
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            isDisplay = value ?? false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: WidgetStateBorderSide.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return BorderSide(
                                color: Color(0xFFE9DFD8),
                                width: 2); // active border
                          }
                          return BorderSide(
                              color: Color(0xFFE9DFD8),
                              width: 2); // inactive border
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity:
                            VisualDensity(horizontal: -4, vertical: -4),
                      ),
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
                      Expanded(
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
              ],
            ),
            20.height,
            Expanded(child: SizedBox()),
            CommonButton(
              titleText: "Continue",
              onTap: () {
                Get.toNamed(AppRoute.introvertScreen);
              },
            ),
            24.height,
          ],
        ),
      ),
    );
  }
}
