import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubscriptionDialog extends StatefulWidget {
  const SubscriptionDialog({super.key});

  @override
  State<SubscriptionDialog> createState() => _SubscriptionDialogState();
}

class _SubscriptionDialogState extends State<SubscriptionDialog> {
  int currentIndex = 0;
  final List subscription = [
    {
      "image": AppImage.sub1,
      "title": "Faev Premium",
      "titleHighlight": "m",
      "description": "The best way to find the right match"
    },
    {
      "image": AppImage.sub2,
      "title": "Unlimited Deal Breakers",
      "description": "Filter to find your ideal roommate, sublease, or friend"
    },
    {
      "image": AppImage.sub3,
      "title": "Boost Your Profile",
      "description":
          "No more reposting for “visibility”, get shown to all your matches daily"
    },
    
    {
      "image": AppImage.sub4,
      "title": "Unlimited Swipes & Messaging",
      "description": "Contact as many matches as you’d like!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 440.h,
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 450.h,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
              reverse: false,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: subscription.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CommonImage(
                            imageSrc: item["image"],
                            imageType: ImageType.png,
                            height: 205,
                            width: 213,
                          ),
                        ),
                        20.height,
                        CommonText(
                          text: item["title"],
                          fontSize: 24,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          color: Color(0xFF161312),
                          fontWeight: FontWeight.w600,
                        ),
                        10.height,
                        CommonText(
                          text: item["description"],
                          fontSize: 16,
                          maxLines: 5,
                          textAlign: TextAlign.start,
                          color: Color.fromRGBO(22, 19, 18, 0.60),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(4, (index) {
                      return currentIndex == index
                          ? AnimatedContainer(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              duration: Duration(milliseconds: 700),
                              height: 8,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: AppColors.blueDeep,
                                  borderRadius: BorderRadius.circular(100)),
                            )
                          : AnimatedContainer(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              duration: Duration(milliseconds: 700),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.blue50,
                              ),
                            );
                    }),
                  ],
                ),
                23.height,
                priceItem(),
              ],
            ))
      ],
    );
  }
}

priceItem() {
  return InkWell(
    onTap: () {
      Get.toNamed(AppRoute.subscriptionScreen);
    },
    child: SizedBox(
      width: Get.width / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CommonText(
                text: "1",
                fontSize: 46,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "month",
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text: "\$9.99",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.60),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: 30.sp,
          )
        ],
      ),
    ),
  );
}

void showSubscriptionDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Dismiss',
    barrierColor: Colors.black54,
    transitionDuration: Duration(milliseconds: 800),
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.only(top: 8, bottom: 15),
            decoration: BoxDecoration(
              color: Color(0xFFFCF3EC),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: 'Dealbreaker',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Align(
                    alignment: Alignment.centerLeft,
                    child: SubscriptionDialog()),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutBack)),
          child: child,
        ),
      );
    },
  );
}
