import 'package:flutter/material.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Subscription"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              33.height,
              subscriptionPackages(),
              34.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  item(
                      title: "month",
                      price: "19.99",
                      monthCount: "1",
                      index: 1,
                      ontap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      isPopuler: true),
                  20.width,
                  item(
                    title: "months",
                    price: "79.99",
                    monthCount: "6",
                    index: 2,
                    ontap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                ],
              ),
              35.height,
              CommonButton(
                titleText: "Get Premium",
              ),
              43.height,
              CommonImage(
                imageSrc: AppImage.subscription,
                imageType: ImageType.png,
                height: 207,
                width: 310,
                borderRadius: 24,
              )
            ],
          ),
        ),
      ),
    );
  }

  subscriptionPackages() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "What you get:",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF070707),
              ),
              CommonText(
                text: "Premium",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF070707),
              ),
            ],
          ),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "Unlimited Messages",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF070707),
              ),
              Icon(
                Icons.check,
                color: AppColors.blueDeep,
              )
            ],
          ),
          10.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "Unlimited rematch",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xFF070707),
              ),
              Icon(
                Icons.check,
                color: AppColors.blueDeep,
              )
            ],
          ),
        ],
      ),
    );
  }

  item(
      {required String title,
      required String price,
      required int index,
      required String monthCount,
      bool isPopuler = false,
      required VoidCallback ontap}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: ontap,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            width: 121,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                color: Color(0xFFFDFDFD),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                    color: AppColors.blueDeep,
                    width: currentIndex == index ? 2 : 1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F101113),
                    blurRadius: 12,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ]),
            child: Column(
              children: [
                CommonText(
                  text: monthCount,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
                10.height,
                CommonText(
                  text: title,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
                10.height,
                CommonText(
                  text: "\$$price",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -8,
          left: 20,
          child: isPopuler
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(
                      color: AppColors.blueDeep,
                      borderRadius: BorderRadius.circular(6)),
                  child: CommonText(
                    text: "Most Popular",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              : SizedBox(),
        )
      ],
    );
  }
}
