import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/sublease_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/helper/other_helper.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/round_checkbox/custom_checkbox.dart';

class MonthlyBudgetScreen extends StatefulWidget {
  const MonthlyBudgetScreen({super.key});

  @override
  State<MonthlyBudgetScreen> createState() => _MonthlyBudgetScreenState();
}

class _MonthlyBudgetScreenState extends State<MonthlyBudgetScreen> {
  double sliderValue = 0.0;
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
                width: Get.width * 0.63,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: "What’s your monthly budget?",
                          fontSize: 24,
                          bottom: 8,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF161312),
                        ),
                        CommonText(
                          text: "Set your monthly rental budget",
                          fontSize: 16,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(22, 19, 18, 0.60),
                        ),
                        32.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: "Monthly budget",
                              fontSize: 16,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF161312),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 25),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFE8E8EB)),
                                  borderRadius: BorderRadius.circular(100)),
                              child: CommonText(
                                text: "\$${sliderValue.toInt()}",
                                fontSize: 16,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF161312),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  15.height,
                  customSlider(
                      value: sliderValue,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      }),
                  5.height,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: "\$100",
                              fontSize: 16,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF161312),
                            ),
                            CommonText(
                              text: "\$8000",
                              fontSize: 16,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF161312),
                            ),
                          ],
                        ),
                        40.height,
                        //=========================================================================Move-in
                        CommonText(
                          text: "Move-in",
                          fontSize: 16,
                          color: Color(0xFF161312),
                          fontWeight: FontWeight.w600,
                        ),
                        10.height,

                        Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFF3EAE3),
                                border: Border.all(color: Color(0xFFE8E8E8))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: TextFormField(
                                    controller: sublease.moveInDate.value,
                                    decoration: InputDecoration(
                                      hintText: "Select date",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    OtherHelper.datePicker(
                                        sublease.moveInDate.value);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(AppIcons.date),
                                  ),
                                ),
                              ],
                            )),
                        //================================================================Move-out
                        16.height,
                        CommonText(
                          text: "Move-out",
                          fontSize: 16,
                          color: Color(0xFF161312),
                          fontWeight: FontWeight.w600,
                        ),
                        10.height,

                        Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFF3EAE3),
                                border: Border.all(color: Color(0xFFE8E8E8))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 250,
                                  child: TextFormField(
                                    controller: sublease.moveOutDate.value,
                                    decoration: InputDecoration(
                                      hintText: "Select date",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    OtherHelper.datePicker(
                                        sublease.moveOutDate.value);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(AppIcons.date),
                                  ),
                                ),
                              ],
                            )),

                        //==========================================================looking for
                        30.height,
                        CommonText(
                          text: "I am looking for a",
                          fontSize: 16,
                          color: Color(0xFF161312),
                          fontWeight: FontWeight.w800,
                        ),
                        15.height,
                        CustomCheckbox(
                          items: sublease.looking,
                          initiallySelected: sublease.selcectparking,
                          isMinimum: false,
                          onSelectionChanged: (selected) {
                            sublease.selcectLooking.value = selected;
                          },
                        ),

                        24.height,
                        CommonButton(
                          titleText: "Continue",
                          onTap: () {
                            Get.toNamed(AppRoute.subleaseMapScreen);
                          },
                        ),
                        24.height,
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          //=======================================================================>
        ],
      ),
    );
  }

  Widget customSlider({
    required double value,
    required ValueChanged<double> onChanged,
    Color activeColor = const Color(0xFFFF4427),
    Color inactiveColor = const Color(0xFFE1E1E1),
    Color backgroundColor = const Color(0xFFFCF3EC),
  }) {
    return Container(
      color: backgroundColor,
      width: Get.width,
      child: SliderTheme(
        data: SliderThemeData(
          activeTrackColor: activeColor,
          inactiveTrackColor: inactiveColor,
          trackHeight: 4.0,
          thumbColor: Colors.white,
          overlayColor: Colors.transparent,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
          trackShape: RoundedRectSliderTrackShape(),
        ),
        child: Slider(
          value: value,
          min: 0,
          max: 8000,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
