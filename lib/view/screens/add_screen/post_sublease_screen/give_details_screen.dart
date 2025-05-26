import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/custom_text_field/custom_text_field.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/widgets/give_details_form.dart';

class GiveDetailsScreen extends StatelessWidget {
  const GiveDetailsScreen({super.key});
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
              child: SingleChildScrollView(
                child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.height,
                  CommonText(
                    text: "Give us the details",
                    fontSize: 24,
                    bottom: 5,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text: "Tell us about your space - we'll handle the search",
                    fontSize: 16,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.60),
                  ),
                  32.height,
                  GiveDetailsForm(),
                  24.height,
                
                  CommonButton(
                    titleText: "Continue",
                    onTap: () {
                      Get.toNamed(AppRoute.describeScreen);
                    },
                  ),
                  40.height,
                ],
                            ),
                          ),
              ))
        ],
      ),
    );
  }
}
