import 'dart:ui';

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

    //====================================================================================for select fun screen
  final funyList = <Map<String, dynamic>>[
    {'title': 'Pilates', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Yoga', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {'title': 'Running', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {
      'title': 'Sculpting/Ceramics',
      'color': Color(0xFFFCF3EC),
      "isBorder": true
    },
    {'title': 'Spa Days', 'color': Color(0xFFFCE9B2), "isBorder": false},
    {
      'title': 'Going to the Nail Salon',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {'title': 'Comedy Shows', 'color': Color(0xFFFCD5D2), "isBorder": false},
    {'title': 'Hosting Dinners', 'color': Color(0xFFCBDFFF), "isBorder": false},
    {'title': 'Painting', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {
      'title': 'Going Out to Eat',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {'title': 'Hiking', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Book Clubs', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {'title': 'Shopping', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {
      'title': 'Trying New Coffee/Matcha Shops',
      'color': Color(0xFFFCE9B2),
      "isBorder": false
    },
    {
      'title': 'Going to the Movie Theater',
      'color': Color(0xFFFCF3EC),
      "isBorder": true
    },
    {'title': 'Live Music', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {
      'title': 'Going to Sports Games',
      'color': Color(0xFFFCF3EC),
      "isBorder": true
    },
    {'title': 'Bar Hopping', 'color': Color(0xFFFCF3EC), "isBorder": true},
    {
      'title': 'Going To The Movie Theater',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {
      'title': 'Going To The Beach',
      'color': Color(0xFFFCF3EC),
      "isBorder": true
    },
  ];

  var selectedColors = <String>[].obs;

  void toggleSelection(String colorName) {
    if (selectedColors.contains(colorName)) {
      selectedColors.remove(colorName);
    } else {
      selectedColors.add(colorName);
    }
  }

}