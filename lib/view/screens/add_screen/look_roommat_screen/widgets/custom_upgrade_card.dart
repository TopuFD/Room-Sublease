import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:room_sublease/Utils/app_icons.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class CustomUpgradeCard extends StatelessWidget {
  final String title;
  final String value;
  bool isUpgrade;
  VoidCallback ontap;


  CustomUpgradeCard({
    super.key,
    required this.title,
    this.value = "",
    this.isUpgrade = false,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: isUpgrade
          ? Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppIcons.upgrade,
                            color: Colors.black,
                            height: 24,
                            width: 24,
                          ),
                          4.width,
                          CommonText(
                            text: "Upgrade",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      5.height,
                      SizedBox(
                        width: 200,
                        child: CommonText(
                          text: value,
                          fontSize: 12,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(22, 19, 18, 0.60),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4427),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CommonText(
                      text: "Upgrade",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            )
          : InkWell(
            onTap: ontap,
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Left side text column
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: title,
                              fontSize: 14,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF161312),
                            ),
                            SizedBox(height: 5.h),
                            CommonText(
                              text: value,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(22, 19, 18, 0.60),
                            ),
                          ],
                        ),
                      ),
            
                      Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 63, 0, 0.06),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppIcons.upgrade),
                                4.width,
                                CommonText(
                                  text: "Upgrade",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFF4427),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 7.h),
                  Divider(
                    color: Color(0xFFE9DFD8),
                  )
                ],
              ),
          ),
    );
  }
}
