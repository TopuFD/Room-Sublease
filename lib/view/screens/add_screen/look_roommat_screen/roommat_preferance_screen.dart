import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/roommat_preferance_controller.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/widgets/custom_preference_item.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/widgets/custom_upgrade_card.dart';

class RoommatPreferanceScreen extends StatelessWidget {
  RoommatPreferanceScreen({super.key});

  final RoommatPreferanceController roommatPref =
      Get.find<RoommatPreferanceController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Get.width,
            height: 1,
            color: Color(0xFFFF4427),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.height,
                    CommonText(
                      text: "What are your roommate preferences?",
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
                      color: Color(0xFF616161),
                    ),
                    20.height,
                    //==========================================================================================================all conditions
                    // ============================================================I am interested in living with
                    CustomItem(
                      title: "I am interested in living with",
                      listValue: roommatPref.selcectGenderPref,
                      isDeal: roommatPref.isGenderDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "I prefer to live with",
                              "prefsvalue": "gender"
                            });
                      },
                    ),
                    // ============================================================I am interested in living with
                    CustomItem(
                      title: "Pet friendly",
                      listValue: roommatPref.selcectPetPref,
                      isDeal: roommatPref.isPetDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Pet friendly",
                              "prefsvalue": "petFriendly"
                            });
                      },
                    ),
                    // ============================================================420 friendly
                    CustomItem(
                      title: "420 friendly ",
                      listValue: roommatPref.selcectPetPref,
                      isDeal: false.obs,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "420 friendly ",
                              "prefsvalue": "partner"
                            });
                      },
                    ),
                    // // ============================================================Roommate wants to be friends
                    CustomItem(
                      title: "Roommate wants to be friends",
                      listValue: roommatPref.selcectfriendPref,
                      isDeal: roommatPref.isfriendDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate wants to be friends",
                              "prefsvalue": "beFriend"
                            });
                      },
                    ),

                    // // ============================================================I prefer to have
                    CustomItem(
                      title: "I prefer to have",
                      value: roommatPref.workSelected, // ✅ pass RxString
                      isDeal: roommatPref.isWrokDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "I prefer to have",
                              "prefsvalue": "work"
                            });
                      },
                    ),

                    // ============================================================smoke
                    CustomItem(
                      title: "Smoking",
                      listValue: roommatPref.selcectsmookPref,
                      isDeal: roommatPref.issmookDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Smoking",
                              "prefsvalue": "smok"
                            });
                      },
                    ),

                    // // ============================================================Roommate is more introverted
                    CustomItem(
                      title: "Roommate is more introverted",
                      value: roommatPref.introSelected, // ✅ pass RxString
                      isDeal: roommatPref.isintroDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate is more introverted",
                              "prefsvalue": "intro"
                            });
                      },
                    ),

                    // // ============================================================Roommate is more extroverted
                    CustomItem(
                      title: "Roommate is more extroverted",
                      value: roommatPref.extroSelected, // ✅ pass RxString
                      isDeal: roommatPref.isextroDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate is more extroverted",
                              "prefsvalue": "extro"
                            });
                      },
                    ),

                    // ============================================================420 friendly
                    CustomItem(
                      title: "Roommate has a romantic partner",
                      listValue: roommatPref.selcectPetPref,
                      isDeal: roommatPref.isPartnerDeel,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate has a romantic partner",
                              "prefsvalue": "partner"
                            });
                      },
                    ),

                    // // ============================================================Roommate has a traditional 9-5 job
                    CustomItem(
                      title: "Roommate has a traditional 9-5 job ",
                      value: roommatPref.jobSelected, // ✅ pass RxString
                      isDeal: false.obs,
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title":
                                  "Roommate has a traditional 9-5 job  (goes to the office or works hybrid)",
                              "prefsvalue": "job"
                            });
                      },
                    ),

                    // //===================================================================================================upgrade card
                    CustomUpgradeCard(
                      title: "Upgrade",
                      value:
                          "To set your preference to non-negotiable, upgrade now",
                      isUpgrade: true,
                      ontap: () {},
                    ),
                    // // ============================================================Preferred political affiliation
                    CustomUpgradeCard(
                      title: "Roommate wants to be friends",
                      value: "Preferred",
                      ontap: () {
                        
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate wants to be friends",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),

                    // // ============================================================Roommate wants to be friends,
                    CustomUpgradeCard(
                      title: "Preferred political affiliation",
                      value: "Democratic Party",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Preferred political affiliation",
                              "prefsvalue": "political"
                            });
                      },
                    ),

                    // // ============================================================Roommate goes out often
                    CustomUpgradeCard(
                      title: "Roommate goes out often",
                      value: "Preferred",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate goes out often",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),
                    // // ============================================================Roommate was a member of Greek life
                    CustomUpgradeCard(
                      title: "Roommate was a member of Greek life",
                      value: "Preferred",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate was involved in Greek life in college ",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),
                    // // ============================================================Roommate is okay with sharing food
                    CustomUpgradeCard(
                      title: "Roommate is okay with sharing food ",
                      value: "Preferred",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate is okay with sharing food",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),
                    // // ============================================================No romantic visitors or overnight guests
                    CustomUpgradeCard(
                      title: "No romantic visitors or overnight guests",
                      value: "Preferred",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "No romantic visitors or overnight guests",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),
                    // // ============================================================Roommate is okay with sharing clothes
                    CustomUpgradeCard(
                      title: "Roommate is okay with sharing clothes",
                      value: "Preferred",
                      ontap: () {
                        Get.toNamed(AppRoute.preferanceSelectionScreen,
                            arguments: {
                              "title": "Roommate is okay with sharing clothes",
                              "prefsvalue": "gooseOut"
                            });
                      },
                    ),
                    32.height,
                    CommonButton(titleText: "Continue"),
                    20.height,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
//======================================================================custom item
}