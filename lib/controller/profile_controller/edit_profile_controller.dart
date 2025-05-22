import 'package:get/get.dart';

class EditProfileController extends GetxController{

  RxString image = "".obs;

    //==========================================================================================for select gender
  List genderList = [
    "Male",
    "Female",
    "Non-binary"
  ];
  RxString selectedGender = "Male".obs;
    //================================================================================for upload images
  RxList images = [].obs;
}