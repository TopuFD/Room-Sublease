import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/roommat_preferance_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/round_checkbox/custom_checkbox.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/custom_toggole_selector.dart';

class PreferanceSelectionScreen extends StatelessWidget {
  PreferanceSelectionScreen({
    super.key,
  });
  final RoommatPreferanceController roommatPref =
      Get.find<RoommatPreferanceController>();
  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    String title = args["title"];
    String prefsValue = args["prefsvalue"];
    return Scaffold(
      appBar: CommonAppbar(title: " Roommate preferences"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              CommonText(
                text: title,
                fontSize: 16,
                maxLines: 2,
                fontWeight: FontWeight.w600,
                color: Color(0xFF161312),
              ),
              20.height,
              //==================================================================================gender
              if (prefsValue == "gender")
                checkItem(
                    checkList: roommatPref.genderPref,
                    selectCheckList: roommatPref.selcectGenderPref,
                    isDeel: roommatPref.isGenderDeel,
                    isCheckbox: true,
                    isDeal: true),

              //==================================================================================gender
              if (prefsValue == "petFriendly")
                checkItem(
                    checkList: roommatPref.petPref,
                    selectCheckList: roommatPref.selcectPetPref,
                    isDeel: roommatPref.isPetDeel,
                    isCheckbox: true,
                    isMinimum: true,
                    isDeal: true),

              //==================================================================================gender
              if (prefsValue == "partner")
                checkItem(
                    checkList: roommatPref.partnerPref,
                    selectCheckList: roommatPref.selcectPartnerPref,
                    isDeel: roommatPref.isPartnerDeel,
                    isCheckbox: true,
                    isMinimum: true,
                    isUpgrade: true),
              //==================================================================================gender
              if (prefsValue == "beFriend")
                checkItem(
                    checkList: roommatPref.friendPref,
                    selectCheckList: roommatPref.selcectfriendPref,
                    isDeel: roommatPref.isfriendDeel,
                    isCheckbox: true,
                    isMinimum: true,
                    isUpgrade: true),
              //==================================================================================gender
              if (prefsValue == "work")
                checkItem(
                  sliderList: roommatPref.workList,
                  sliderSelect: roommatPref.workSelected,
                  isDeel: roommatPref.isWrokDeel,
                  isSlider: true,
                  isDeal: true,
                ),

              //==================================================================================smoking
              if (prefsValue == "smok")
                checkItem(
                    checkList: roommatPref.smookPref,
                    selectCheckList: roommatPref.selcectsmookPref,
                    isDeel: roommatPref.issmookDeel,
                    isCheckbox: true,
                    isMinimum: true,
                    isDeal: true),

              //==================================================================================gender
              if (prefsValue == "intro")
                checkItem(
                  sliderList: roommatPref.introList,
                  sliderSelect: roommatPref.introSelected,
                  isDeel: roommatPref.isintroDeel,
                  isSlider: true,
                  isDeal: true,
                ),

              //==================================================================================gender
              if (prefsValue == "extro")
                checkItem(
                  sliderList: roommatPref.extroList,
                  sliderSelect: roommatPref.extroSelected,
                  isDeel: roommatPref.isextroDeel,
                  isSlider: true,
                  isDeal: true,
                ),
              //==================================================================================gender
              if (prefsValue == "job")
                checkItem(
                    sliderList: roommatPref.jobList,
                    sliderSelect: roommatPref.jobSelected,
                    isDeel: false.obs,
                    isSlider: true,
                    isUpgrade: true),
              //==================================================================================gender
              if (prefsValue == "political")
                checkItem(
                    checkList: roommatPref.politicalPref,
                    selectCheckList: roommatPref.selcectpolitacalPref,
                    isDeel: roommatPref.isPoliticalrDeel,
                    isCheckbox: true,
                    isMinimum: true,
                    isPolitical: true,
                    isDeal: true),
              //==================================================================================gose out

              if (prefsValue == "gooseOut")
                checkItem(
                  sliderList: roommatPref.extroList,
                  sliderSelect: roommatPref.extroSelected,
                  isDeel: roommatPref.isextroDeel,
                  isSlider: true,
                  isDeal: true,
                ),
            ],
          ),
        ),
      ),
    );
  }

  checkItem({
    List<String>? checkList,
    RxList<String>? selectCheckList,
    List<String>? sliderList,
    RxString? sliderSelect,
    required RxBool isDeel,
    bool isMinimum = false,
    bool isUpgrade = false,
    bool isCheckbox = false,
    bool isSlider = false,
    bool isDeal = false,
    bool isPolitical = false,
  }) {
    return Column(
      children: [
        //========================================================================= check box
        if (isCheckbox)
          CustomCheckbox(
            items: checkList!,
            initiallySelected: selectCheckList,
            isMinimum: isMinimum,
            onSelectionChanged: (selected) {
              selectCheckList!.value = selected;
            },
          ),

        //=========================================================================slider Toggle
        if (isSlider)
          HorizontalToggleSlider(
            options: sliderList!,
            selectedOption: sliderSelect!, // ✅ still reactive!
          ),
        10.height,
        Divider(color: Color(0xFFE9DFD8)),
        24.height,
        if (isDeal)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: "Dealbreaker",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF161312),
              ),
              Obx(() => Switch(
                    activeColor: Color(0xFF34C759),
                    thumbColor: MaterialStateProperty.all(Colors.white),
                    value: isDeel.value,
                    onChanged: (value) {
                      isDeel.value = value;
                    },
                  )),
            ],
          ),
        //======================================================================for political
        if (isPolitical)
          Column(
            children: [
              24.height,
              Divider(color: Color(0xFFE9DFD8)),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: "Display preference on profile",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF161312),
                  ),
                  Transform.scale(
                    scale: 1.3,
                    child: Obx(() {
                      return Checkbox(
                        value: roommatPref.isDisplay.value,
                        fillColor:
                            MaterialStateProperty.all(Colors.transparent),
                        checkColor: Colors.black,
                        onChanged: (value) {
                          roommatPref.isDisplay.value = value ?? false;
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: MaterialStateBorderSide.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return BorderSide(
                                color: Color(0xFFE9DFD8),
                                width: 2); // active border
                          }
                          return BorderSide(
                              color: Color(0xFFE9DFD8),
                              width: 2); // inactive border
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity:
                            VisualDensity(horizontal: -4, vertical: -4),
                      );
                    }),
                  )
                ],
              ),
              32.height,
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFF5E2D1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.ask),
                    5.width,
                    SizedBox(
                      width: 275,
                      child: CommonText(
                        text:
                            "Your answer is hidden from your profile unless you want to disclose it. This is purely for algorithm matching!",
                        fontSize: 16,
                        maxLines: 5,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF161312),
                      ),
                    ),
                  ],
                ),
              ),
              20.height,
            ],
          ),

        //=========================================================================upgrade
        if (isUpgrade)
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
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
    );
  }
}
