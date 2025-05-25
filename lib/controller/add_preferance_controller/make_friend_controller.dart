import 'package:get/get.dart';

class MakeFriendController extends GetxController{
  
  //=================================================================intro friendly
  List<String> introPref = ["Yes", "No",];
    RxList<String> selcectIntro = <String>["Yes"].obs;
    
  
  //=================================================================extro friendly
  List<String> extroPref = ["Yes", "No",];
    RxList<String> selcectExtro = <String>["Yes"].obs;
    
  //=================================================================select gender preference
  List<String> politicalPref = ["Democratic Party", "Republican Party", "Libertarian Party","Green Party","Independent","Progressive","Conservative","Moderate","Socialist","Prefer not to say"];
    RxList<String> selcectpolitacalPref = <String>["Democratic Party"].obs;
}