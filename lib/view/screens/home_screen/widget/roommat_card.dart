import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class RoommatCard extends StatelessWidget {
  RoommatCard({super.key,required this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: MediaQuery.of(context).size.height * .59,
      padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19C7C7C7),
              blurRadius: 21,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x16C7C7C7),
              blurRadius: 39,
              offset: Offset(0, 39),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0CC7C7C7),
              blurRadius: 52,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x02C7C7C7),
              blurRadius: 62,
              offset: Offset(0, 156),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x00C7C7C7),
              blurRadius: 68,
              offset: Offset(0, 243),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 29,
              offset: Offset(0, 17),
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: Stack(
              children: [
                CommonImage(
                  imageSrc:image,
                  imageType: ImageType.network,
                  borderRadius: 28,
                  height: Get.height,
                  width: Get.width,
                  fill: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.12),
                                borderRadius: BorderRadius.circular(23)),
                            child: Center(
                              child: CommonText(
                                text: "Just looking for friends!",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          10.height,
                          CommonText(
                            text: "Amelia, 25",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                          5.height,
                          CommonText(
                            text: "Product designer @ Google",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 0.70),
                          ),
                          10.height,
                          Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 0.12)),
                                child: Center(
                                  child: SvgPicture.asset(AppIcons.location),
                                ),
                              ),
                              8.width,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(
                                    text: "Prefrered area",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                  CommonText(
                                    text: "Soho west village Chelsea",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(255, 255, 255, 0.60),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 11),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: CommonText(
                            text: "94% match",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF141415),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          10.height,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                item(icon: AppIcons.cross2),
                item(icon: AppIcons.star),
                item(icon: AppIcons.favorite),
              ],
            ),
          )
        ],
      ),
    );
  }

  item({required String icon}) {
    return Container(
      height: 56.h,
      width: 96.w,
      decoration: BoxDecoration(
          color: Color(0xFFF6F6F6), borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: SvgPicture.asset(
          icon,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}
