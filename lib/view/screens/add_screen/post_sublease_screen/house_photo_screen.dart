import 'dart:developer';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/post_sublease_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class HousePhotoScreen extends StatelessWidget {
  HousePhotoScreen({super.key});
  final PostSubleaseController postSublease =
      Get.find<PostSubleaseController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 1,
                color: Color(0xFFE9DFD8),
              ),
              Container(
                width: Get.width * 0.8,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.height,
                CommonText(
                  text: "Add some photos of your property",
                  fontSize: 24,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Tell us about your place",
                  fontSize: 16,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                Row(
                  children: [
                    Expanded(
                        child: item(
                            title: "JPEG, PNG",
                            ontap: () async {
                              var image = await OtherHelper.openGallery();
                              postSublease.images.add(image);
                              log("images==========>${postSublease.images}");
                            })),
                    10.width,
                    Expanded(
                        child: item(
                            title: "Take new photos",
                            ontap: () async {
                              var image = await OtherHelper.openCamera();
                              postSublease.images.add(image);

                              log("images==========>${postSublease.images}");
                            },
                            icon: Icons.camera_alt_outlined)),
                  ],
                ),
                24.height,
                CommonText(
                  text: "What does it look like?",
                  fontSize: 16,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Drag to reorder",
                  fontSize: 14,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(20, 20, 21, 0.60),
                ),
                20.height,
                //=========================================================================all images
                Expanded(
                  child: Obx(
                    () {
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            mainAxisExtent: 150),
                        itemCount:
                            postSublease.images.length, // Number of items
                        itemBuilder: (context, index) {
                          var data = postSublease.images[index];
                          log("data======>$data");
                          return SizedBox(
                            height: 137,
                            width: 165,
                            child: Stack(
                              children: [
                                CommonImage(
                                  imageSrc: data,
                                  imageType: ImageType.file,
                                  height: 137,
                                  width: 165,
                                  borderRadius: 20,
                                ),
                                Positioned(
                                    right: 15,
                                    top: 5,
                                    child: InkWell(
                                      onTap: () {
                                        postSublease.images.remove(data);
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: SvgPicture.asset(AppIcons.cross),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.postAmenitiesScreen);
                  },
                ),
                40.height,
              ],
            ),
          ))
        ],
      ),
    );
  }

  item(
      {required String title,
      required VoidCallback ontap,
      IconData icon = Icons.add}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 107,
        decoration: DottedDecoration(
          shape: Shape.box,
          color: Color(0xFFE9DFD8),
          borderRadius:
              BorderRadius.circular(10), //remove this to get plane rectange
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            CommonText(
              text: "JPEG, PNG",
              fontSize: 14,
              bottom: 5,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w500,
              color: Color(0xFF161312),
            ),
          ],
        ),
      ),
    );
  }
}
