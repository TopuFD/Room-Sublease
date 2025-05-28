import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/Utils/app_icons.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            60.height,
            SizedBox(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonImage(
                    imageSrc:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-x5vE0brboTxYw_enQTr0nuaGSVAIdn0dw&s",
                    imageType: ImageType.network,
                    height: 73,
                    width: 73,
                    borderRadius: 100,
                  ),
                  15.height,
                  CommonText(
                    text: "Harold Keith",
                    fontSize: 20,
                    bottom: 4,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text: "haroldk@gmail.com",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0x99161312),
                  ),
                ],
              ),
            ),
            25.height,
            //==================================================================profile
            item(
                icon: AppIcons.profile2,
                title: "My Profile",
                ontap: () {
                  Get.toNamed(AppRoute.profileDetailsScreen);
                }),
            //==================================================================profile
            item(
                icon: AppIcons.subscription,
                title: "Subscription",
                ontap: () {
                  Get.toNamed(AppRoute.subscriptionScreen);
                }),
            //==================================================================profile
            item(
                icon: AppIcons.term,
                title: "Terms & Conditions",
                ontap: () {
                  Get.toNamed(AppRoute.termConditionScreen);
                }),
            //==================================================================profile
            item(
                icon: AppIcons.privacy,
                title: "Privacy Policy",
                ontap: () {
                  Get.toNamed(AppRoute.privacyPolicyScreen);
                }),
                
            //==================================================================profile
            item(
                icon: AppIcons.support,
                title: "Support",
                ontap: () {
                  Get.toNamed(AppRoute.supportScreen);
                }),
            60.height,
            //==================================================================profile
            item(icon: AppIcons.logout, title: "Log Out", ontap: () {}),
          ],
        ),
      ),
    );
  }

  item(
      {required String icon,
      required String title,
      required VoidCallback ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 45, top: 10, bottom: 10),
        decoration: BoxDecoration(color: Color(0xFFFCF3EC), boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 8,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ]),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            30.width,
            CommonText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
