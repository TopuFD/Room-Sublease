import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/sublease_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/widgets/custom_preference_item.dart';

class PostAmenitiesScreen extends StatefulWidget {
  const PostAmenitiesScreen({super.key});

  @override
  State<PostAmenitiesScreen> createState() => PostAmenitiesScreenState();
}

class PostAmenitiesScreenState extends State<PostAmenitiesScreen> {
  Set<int> selectedIndices = {};
  final SubleaseController sublease = Get.find<SubleaseController>();

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
                width: Get.width * 0.9,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "What are your housing preferences?",
                    fontSize: 24,
                    bottom: 8,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                  CommonText(
                    text:
                        "Be as honest as possible - we'll take care of the rest",
                    fontSize: 16,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(22, 19, 18, 0.60),
                  ),
                  32.height,
                  //=======================================================================>
                  // ================================================Furnished Apartment
                  CustomItem(
                    title: "Furnished Apartment",
                    listValue: sublease.selcectApartment,
                    isDeal: false.obs,
                    ontap: () {
                      Get.toNamed(AppRoute.apartmentAmenitiesScreen, arguments: {
                        "value": "apartment",
                      });
                    },
                  ),
                  // ================================================Apartment Amenities
                  CustomItem(
                    title: "Apartment Amenities",
                    listValue: sublease.selcectAmenities,
                    isDeal: false.obs,
                    ontap: () {
                      Get.toNamed(AppRoute.apartmentAmenitiesScreen, arguments: {
                        "value": "Amenities",
                      });
                    },
                  ),
                  // ================================================Furnished Apartment
                  CustomItem(
                    title: "Internet",
                    listValue: sublease.selcectinternet,
                    isDeal: false.obs,
                    ontap: () {
                      Get.toNamed(AppRoute.apartmentAmenitiesScreen, arguments: {
                        "value": "Internet",
                      });
                    },
                  ),
                  // ================================================Apartment Amenities
                  CustomItem(
                    title: "Parking",
                    listValue: sublease.selcectparking,
                    isDeal: false.obs,
                    ontap: () {
                      Get.toNamed(AppRoute.apartmentAmenitiesScreen, arguments: {
                        "value": "Parking",
                      });
                    },
                  ),
                  Expanded(child: SizedBox()),
            
                  CommonButton(
                    titleText: "Continue",
                    onTap: () {
                      Get.toNamed(AppRoute.giveDetailsScreen);
                    },
                  ),
                  40.height,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
