import 'package:get/get.dart';

class MakeFriendController extends GetxController {
  //=================================================================intro friendly
  List<String> introPref = [
    "Yes",
    "No",
  ];
  RxList<String> selcectIntro = <String>["Yes"].obs;

  //=================================================================extro friendly
  List<String> extroPref = [
    "Yes",
    "No",
  ];
  RxList<String> selcectExtro = <String>["Yes"].obs;
  
  //=================================================================extro friendly
  List<String> oftenPref = [
    "More than twice a week",
    "A few times a month",
    "Rarely"
  ];
  RxList<String> selcectOften = <String>["More than twice a week"].obs;

  //=================================================================select gender preference
  List<String> politicalPref = [
    "Democratic Party",
    "Republican Party",
    "Libertarian Party",
    "Green Party",
    "Independent",
    "Progressive",
    "Conservative",
    "Moderate",
    "Socialist",
    "Prefer not to say"
  ];
  RxList<String> selcectpolitacalPref = <String>["Democratic Party"].obs;
  RxBool isDeal = false.obs;
}
