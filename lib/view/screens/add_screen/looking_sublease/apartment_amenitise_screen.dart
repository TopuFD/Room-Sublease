import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/sublease_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/round_checkbox/custom_checkbox.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/custom_toggole_selector.dart';

class ApartmentAmenitiseScreen extends StatelessWidget {
  ApartmentAmenitiseScreen({super.key});

  var args = Get.arguments;
  final SubleaseController sublease = Get.find<SubleaseController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Apartment Amenities"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            if (args["value"] == "apartment")
              CustomCheckbox(
                items: sublease.apartmentPref,
                initiallySelected: sublease.selcectApartment,
                isMinimum: true,
                onSelectionChanged: (selected) {
                  sublease.selcectApartment.value = selected;
                },
              ),
            if (args["value"] == "Amenities")
              CustomCheckbox(
                items: sublease.amenitiesPref,
                initiallySelected: sublease.selcectAmenities,
                isMinimum: true,
                onSelectionChanged: (selected) {
                  sublease.selcectAmenities.value = selected;
                },
              ),

            if (args["value"] == "Internet")
              CustomCheckbox(
                items: sublease.internet,
                initiallySelected: sublease.selcectinternet,
                isMinimum: true,
                onSelectionChanged: (selected) {
                  sublease.selcectinternet.value = selected;
                },
              ),
            if (args["value"] == "Parking")
              CustomCheckbox(
                items: sublease.parking,
                initiallySelected: sublease.selcectparking,
                isMinimum: true,
                onSelectionChanged: (selected) {
                  sublease.selcectparking.value = selected;
                },
              ),
            //==================================================================================gose out

            if (args["value"] == "private")
              Column(
                children: [
                  30.height,
                  HorizontalToggleSlider(
                    options: sublease.private,
                    selectedOption: sublease.privateSelected,
                  ),
                  Divider(color: Color(0xFFE9DFD8)),
                  24.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: "Dealbreaker",
                        fontSize: 16,
                        bottom: 5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF161312),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            child: CommonText(
                              text:
                                  "If you want to categorize this preference as a dealbreaker, you will need to update to Faev premium",
                              fontSize: 12,
                              maxLines: 5,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(22, 19, 18, 0.60),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
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
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
