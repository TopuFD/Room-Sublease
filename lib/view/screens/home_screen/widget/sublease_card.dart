import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubleaseCard extends StatelessWidget {
  const SubleaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 9,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          12.height,
          CommonText(text: "I’m looking for a roommate for this room."),
          12.height,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonImage(
                    imageSrc:
                        "https://t4.ftcdn.net/jpg/04/18/33/19/360_F_418331990_19XPoUYZzDhLVoWbItLAfkHb0GhkZoEQ.jpg",
                    imageType: ImageType.network,
                    height: 143,
                    width: 160,
                    borderRadius: 4,
                  ),
                  CommonImage(
                    imageSrc:
                        "https://i.pinimg.com/474x/99/54/8a/99548af51d74f323b630a15621d78599.jpg",
                    imageType: ImageType.network,
                    height: 143,
                    width: 160,
                    borderRadius: 4,
                  )
                ],
              ),
              12.height,
              CommonImage(
                imageSrc:
                    "https://api.photon.aremedia.net.au/wp-content/uploads/sites/2/umb-media/25922/resort-style-1980s-home-renovation-living-room-vaulted-a-frame-ceiling.jpg?crop=0px%2C1001px%2C1467px%2C825px&resize=820%2C461",
                imageType: ImageType.network,
                height: 161,
                width: Get.width,
                borderRadius: 4,
              )
            ],
          )
        ],
      ),
    );
  }

  header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CommonImage(
              imageSrc:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-x5vE0brboTxYw_enQTr0nuaGSVAIdn0dw&s",
              imageType: ImageType.network,
              height: 34,
              width: 34,
              borderRadius: 100,
            ),
            10.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: "Jordy Sonia",
                  fontSize: 14,
                  bottom: 4,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF201F52),
                ),
                CommonText(
                  text: "12:30 PM",
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0B0B0B),
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: AppColors.blueDeep,
              borderRadius: BorderRadius.circular(100)),
          child: CommonText(
            text: "Message",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF201F52),
          ),
        )
      ],
    );
  }
}
