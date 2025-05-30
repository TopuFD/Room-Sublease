import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SubleaseController extends GetxController{
  Rx<TextEditingController> moveInDate = TextEditingController().obs;
  Rx<TextEditingController> moveOutDate = TextEditingController().obs;
    //=================================================================Furnished Apartment
  List<String> apartmentPref = ["Yes", "No", "Flexible"];
  RxList<String> selcectApartment = <String>["Yes"].obs;
  
    //=================================================================Amenities
  List<String> amenitiesPref = ["Gym", "Laundry", "Pool"];
  RxList<String> selcectAmenities = <String>["Gym"].obs;

      //=================================================================Furnished Apartment
  List<String> internet = ["Yes", "No", "Flexible"];
  RxList<String> selcectinternet = <String>["Yes"].obs;
  
    //=================================================================Amenities
  List<String> parking = ["Yes", "No", "Flexible"];
  RxList<String> selcectparking = <String>["Yes"].obs;
    //===================================================================================I prefer to have
    List<String> private =  ["Preferred","Not Preferred"];

    final RxString privateSelected = 'Preferred'.obs;


    //======================================================================looking for 
  List<String> looking = ["Less than 6 month lease", "Month to month lease", "1 year lease","Greater than one year"];
  RxList<String> selcectLooking = <String>["Less than 6 month lease"].obs;

}