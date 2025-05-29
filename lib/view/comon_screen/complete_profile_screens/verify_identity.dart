import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFCF3EC),
        appBar: CommonAppbar(title: ""),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.height,
                CommonText(
                  text: "Verify your identity",
                  fontSize: 28,
                  bottom: 10,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  color: Color(0xFF2A2927),
                  fontWeight: FontWeight.w600,
                ),
                CommonText(
                  text: "It should take a few minutes",
                  fontSize: 16,
                  color: Color.fromRGBO(42, 41, 39, 0.60),
                  fontWeight: FontWeight.w500,
                ),
                74.height,
                Align(
                  alignment: Alignment.center,
                  child: CommonImage(
                    imageSrc: AppImage.verify,
                    imageType: ImageType.png,
                    height: 170,
                    width: 170,
                  ),
                ),
                60.height,
                Container(
                  width: Get.width,
                  padding: EdgeInsets.only(left: 3, top: 3, bottom: 12, right: 3),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3EAE3),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.loc),
                            12.width,
                            SizedBox(
                              width: 260,
                              child: CommonText(
                                text:
                                    "Faev is committed to protecting your personal information.",
                                fontSize: 14,
                                maxLines: 3,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF161312),
                              ),
                            )
                          ],
                        ),
                      ),
                      12.height,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppIcons.check),
                            12.width,
                            SizedBox(
                              width: 260,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By checking this box, I confirm that I have read and agree to  ",
                                    style: GoogleFonts.manrope(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF89837F),
                                    )),
                                TextSpan(
                                    text: "Faev",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF161312),
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text:
                                        "  Personal Data Processing Regulations and the  ",
                                    style: GoogleFonts.manrope(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF89837F),
                                    )),
                                TextSpan(
                                    text: "Terms and Conditions",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF161312),
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "  for account services.",
                                    style: GoogleFonts.manrope(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF89837F),
                                    )),
                              ])),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                56.height,
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
          
                    Get.toNamed(AppRoute.frameCameraScreen);
                    // Get.toNamed(AppRoute.verifyWaitingScreen);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
