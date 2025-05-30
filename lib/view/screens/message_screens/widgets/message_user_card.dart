import 'package:flutter/material.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class MessageUserCard extends StatelessWidget {
  const MessageUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CommonImage(
                imageSrc:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-x5vE0brboTxYw_enQTr0nuaGSVAIdn0dw&s",
                imageType: ImageType.network,
                height: 52,
                width: 52,
                borderRadius: 100,
              ),
              16.width,
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "Sabrina Wah",
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212),
                    ),
                    6.height,
                    CommonText(
                      text: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF121212),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: AppColors.blueDeep, shape: BoxShape.circle),
                child: Center(
                  child: CommonText(
                      text: "1",
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              6.height,
              CommonText(
                text: "2:30 PM",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFFAAAAAA),
              ),
            ],
          )
        ],
      ),
    );
  }
}
