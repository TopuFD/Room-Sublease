import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
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
            24.height,
            CommonText(
              text: "Where do you live or plan to move?",
              fontSize: 24,
              bottom: 5,
              maxLines: 2,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w600,
              color: Color(0xFF161312),
            ),
            CommonText(
              text: "Please share your location",
              fontSize: 16,
              maxLines: 2,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(22, 19, 18, 0.60),
            ),
            32.height,
            
            CommonText(
              text: "Location",
              fontSize: 14,
              maxLines: 2,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w500,
              color: Color(0xFF161312),
            ),
            15.height,
            Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFF3EAE3),
                    border: Border.all(color: Color(0xFFE8E8E8))),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Write your location",
                    border: InputBorder.none,
                  ),
                )
              ),

            Expanded(child: SizedBox()),
            CommonButton(
              titleText: "Continue",
              onTap: () {
                Get.toNamed(AppRoute.riligionScreen);
              },
            ),
            24.height,
          ],
        ),
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
