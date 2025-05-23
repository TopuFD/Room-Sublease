import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Subscription"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          children: [
            10.height,
            item(),
            65.height,
            CommonImage(
              imageSrc:
                  "https://media.istockphoto.com/id/1743336675/photo/women-friends-relax-and-conversation-in-a-home-with-gossip-discussion-and-happy-in-a-living.jpg?s=612x612&w=0&k=20&c=fKmAExz118-vwl-RY8zD1DwmhOimxe_weSTf8tdeI6I=",
              imageType: ImageType.network,
              height: 207,
              width: 310,
              borderRadius: 24,
            )
          ],
        ),
      ),
    );
  }

  item() {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Color(0xFFB0D0FD),
          borderRadius: BorderRadius.circular(24),
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
            text: "Faev Premium",
            fontSize: 36,
            fontWeight: FontWeight.w800,
            color: Color(0xFF1A1B1E),
          ),
          20.height,
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "\$9.99",
              style: GoogleFonts.manrope(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF070707)),
            ),
            TextSpan(
              text: " / Monthly",
              style: GoogleFonts.manrope(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF070707)),
            )
          ])),
          20.height,
          Row(
            children: [
              Container(
                height: 25.h,
                width: 25.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF5E2D1)),
                child: Icon(
                  Icons.check,
                  color: Color(0xFFF43F00),
                  size: 15,
                ),
              ),
              10.width,
              SizedBox(
                width: 177,
                child: CommonText(
                  text:
                      "Unlimited dealbreakers to make sure you find the right roommate.",
                  fontSize: 16,
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1A1A1A),
                ),
              ),
            ],
          ),
          20.height,
          Container(
            height: 50,
            width: 262,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonText(
                  text: "Buy Now",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF4427),
                ),
                5.width,
                SvgPicture.asset(AppIcons.right)
              ],
            ),
          )
        ],
      ),
    );
  }
}
