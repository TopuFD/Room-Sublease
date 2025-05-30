import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_sublease/Utils/app_icons.dart';
import 'package:room_sublease/controller/home_controller/home_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class SeeUserProfile extends StatelessWidget {
  SeeUserProfile({super.key});
  final HomeController homeController = Get.put(HomeController());
  List images = [
    "https://www.shutterstock.com/image-illustration/3d-illustration-house-modern-style-600nw-2557750481.jpg",
    "https://i.pinimg.com/736x/f6/b4/76/f6b4766338f8214ba8302afac02eb18e.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Profile"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              Align(
                alignment: Alignment.center,
                child: CommonImage(
                  imageSrc:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-x5vE0brboTxYw_enQTr0nuaGSVAIdn0dw&s",
                  imageType: ImageType.network,
                  height: 100,
                  width: 100,
                  borderRadius: 100,
                ),
              ),
              10.height,
              Align(
                alignment: Alignment.center,
                child: CommonText(
                  text: "Sabrina Wah",
                  fontSize: 18,
                  bottom: 4,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF161312),
                ),
              ),

              25.height,
              Align(
                alignment: Alignment.centerLeft,
                child: CommonText(
                  text: "Bio",
                  fontSize: 16,
                  bottom: 3,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF161312),
                ),
              ),
              CommonText(
                text:
                    "Lorem ipsum dolor sit amet consectetur. Auctor mauris ultrices quis nascetur vestibulum viverra. Imperdiet egestas eu tellus adipiscing. Quis adipiscing vel id id. Feugiat gravida quis fames sit lectus netus.",
                fontSize: 16,
                maxLines: 10,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w500,
                color: Color(0xFF606061),
              ),
              25.height,
              Row(
                children: [
                  SvgPicture.asset(AppIcons.degree),
                  8.width,
                  Expanded(
                    child: RichText(
                        maxLines: 3,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Bsc.",
                              style: GoogleFonts.manrope(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF161312))),
                          TextSpan(
                              text: " in Computer Science and Engineering at",
                              style: GoogleFonts.manrope(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF161312))),
                          TextSpan(
                              text: " University of California.",
                              style: GoogleFonts.manrope(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF161312))),
                        ])),
                  ),
                ],
              ),
              25.height,
              Align(
                alignment: Alignment.centerLeft,
                child: CommonText(
                  text: "Dream Apartment",
                  fontSize: 16,
                  bottom: 3,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF161312),
                ),
              ),
              5.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...List.generate(images.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      child: CommonImage(
                        imageSrc: images[index],
                        imageType: ImageType.network,
                        height: 96,
                        width: 100,
                        borderRadius: 16,
                      ),
                    );
                  })
                ],
              ),
              25.height,
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.instagram2,
                  ),
                  8.width,
                  CommonText(
                    text: "Education",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF161312),
                  )
                ],
              ),
              25.height,
              //========================================================================fun activity
              Align(
                alignment: Alignment.centerLeft,
                child: CommonText(
                  text: "Fun Activities",
                  fontSize: 16,
                  bottom: 3,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF161312),
                ),
              ),
              funActivity(),
            ],
          ),
        ),
      ),
    );
  }

  funActivity() {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 10,
        children: homeController.funyList.map((colorMap) {
          final colorName = colorMap['title'] as String;
          final color = colorMap['color'] as Color;
          final isBorder = colorMap['isBorder'] as bool;
      
          return Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 0),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 2),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
              border: isBorder == true
                  ? Border.all(color: Color(0xFFE9DFD8), width: 1)
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                  text: colorName,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF141415),
                ),
                8.width,
                Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 20,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
