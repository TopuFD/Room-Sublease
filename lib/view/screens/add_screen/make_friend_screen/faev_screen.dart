import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class FaevScreen extends StatefulWidget {
  const FaevScreen({super.key});

  @override
  State<FaevScreen> createState() => FaevScreenState();
}

class FaevScreenState extends State<FaevScreen> {
  Set<int> selectedIndices = {};

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
          24.height,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "What brings you to Faev",
                    fontSize: 24,
                    bottom: 5,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text: "Tell us about you!",
                    fontSize: 16,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.60),
                  ),
                  15.height,
                  Column(
                    children: [
                      item(
                        ontap: () {
                          setState(() {
                            if (selectedIndices.contains(0)) {
                              selectedIndices.remove(0);
                            } else {
                              selectedIndices.add(0);
                            }
                          });
                        },
                        title: "Moving for work",
                        index: 0,
                        isSelected: selectedIndices.contains(0),
                      ),
                      item(
                        ontap: () {
                          setState(() {
                            if (selectedIndices.contains(1)) {
                              selectedIndices.remove(1);
                            } else {
                              selectedIndices.add(1);
                            }
                          });
                        },
                        title: "Looking to make new friends",
                        index: 1,
                        isSelected: selectedIndices.contains(1),
                      ),
                      item(
                        ontap: () {
                          setState(() {
                            if (selectedIndices.contains(2)) {
                              selectedIndices.remove(2);
                            } else {
                              selectedIndices.add(2);
                            }
                          });
                        },
                        title: "New to the city and looking to expand my circle",
                        index: 2,
                        isSelected: selectedIndices.contains(2),
                      ),
                      item(
                        ontap: () {
                          setState(() {
                            if (selectedIndices.contains(3)) {
                              selectedIndices.remove(3);
                            } else {
                              selectedIndices.add(3);
                            }
                          });
                        },
                        title: "Want to meet likeminded people",
                        index: 3,
                        isSelected: selectedIndices.contains(3),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  CommonButton(
                    titleText: "Continue",
                    onTap: () {
                      Get.toNamed(AppRoute.addressScreen);
                    },
                  ),
                  24.height,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget item({
    required String title,
    required int index,
    required VoidCallback ontap,
    required bool isSelected,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFFDDEC2) : Color(0xFFF3EAE3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 250,
              child: CommonText(
                text: title,
                fontSize: 16,
                maxLines: 2,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                color: Color(0xFF161312),
              ),
            ),
            isSelected
                ? Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 20,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
