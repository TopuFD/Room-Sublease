import 'package:get/get.dart';

class RoommatPreferanceController extends GetxController {
  //=================================================================select gender preference
  List<String> genderPref = ["Men", "Women", "LQBTQ+ Friendly"];
    RxList<String> selcectGenderPref = <String>["Men"].obs;
    RxBool isGenderDeel = false.obs;
  //=================================================================Pet friendly
  List<String> petPref = ["Yes", "No", "Flexible"];
    RxList<String> selcectPetPref = <String>["Yes"].obs;
    RxBool isPetDeel = false.obs;
  //=================================================================partner 
  List<String> partnerPref = ["Yes", "No", "Flexible"];
    RxList<String> selcectPartnerPref = <String>["Yes"].obs;
    RxBool isPartnerDeel = false.obs;
  //=================================================================be friend
  List<String> friendPref = ["Yes", "No", "Flexible"];
    RxList<String> selcectfriendPref = <String>["Yes"].obs;
    RxBool isfriendDeel = false.obs;
  //===================================================================================I prefer to have
    List<String> workList = ["Work-from-home roommates","No work-from-home roommates"];

    final RxString workSelected = 'Work-from-home roommates'.obs;
    RxBool isWrokDeel = false.obs;
  
  //=================================================================smoking
  List<String> smookPref = ["Yes", "No", "Flexible"];
    RxList<String> selcectsmookPref = <String>["Yes"].obs;
    RxBool issmookDeel = false.obs;
    
  //===================================================================================I prefer to have
    List<String> introList = ["Preferred","Not Preferred"];

    final RxString introSelected = 'Preferred'.obs;
    RxBool isintroDeel = false.obs;
    
  //===================================================================================I prefer to have
    List<String> extroList =  ["Preferred","Not Preferred"];

    final RxString extroSelected = 'Preferred'.obs;
    RxBool isextroDeel = false.obs;
      //===================================================================================I prefer to have
    List<String> jobList =  ["Preferred","Not Preferred"];

    final RxString jobSelected = 'Preferred'.obs;
}
