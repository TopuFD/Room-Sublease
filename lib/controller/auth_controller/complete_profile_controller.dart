import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CompleteProfileController extends GetxController {
  RxString idImage = "".obs;
  RxString userImage = "".obs;

  //====================================================================================for select fun screen
  final parsonList = <Map<String, dynamic>>[
    {
      'title': 'I like peace and quiet ',
      'color': Color(0xFFFDDEC3),
      "isBorder": false
    },
    {
      'title': 'I enjoy going out often ',
      'color': Color(0xFFFCE9B2),
      "isBorder": true
    },
    {
      'title': 'I order takeout often',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {
      'title': ' I am up early every day',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {'title': 'I host pregames ', 'color': Color(0xFFFDDEC3), "isBorder": true},
    {
      'title': 'I like keeping it clean',
      'color': Color(0xFFFCE9B2),
      "isBorder": false
    },
    {
      'title': 'It’s okay if dishes pile up ',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {
      'title': 'I play music loudly ',
      'color': Color(0xFFCBDFFF),
      "isBorder": false
    },
    {
      'title': 'My home is my safe space',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {'title': 'I hate drama', 'color': Color(0xFFFCD5D2), "isBorder": false},
    {
      'title': 'My partner comes over often ',
      'color': Color(0xFFCBDFFF),
      "isBorder": false
    },
    {'title': 'I drink often', 'color': Color(0xFFFCE9B2), "isBorder": false},
    {
      'title': 'Headphones only type of person ',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {'title': 'I like to cook', 'color': Color(0xFFE8D0FC), "isBorder": false},
    {
      'title': 'I thrive on last-minute plans',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {
      'title': 'I decorate for every season',
      'color': Color(0xFFCBDFFF),
      "isBorder": false
    },
    {
      'title': 'Non-confrontational',
      'color': Color(0xFFFDDEC3),
      "isBorder": true
    },
    {
      'title': 'Lights off after 9',
      'color': Color(0xFFFCE9B2),
      "isBorder": false
    },
    {
      'title': 'I leave my door open to socialize',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {
      'title': 'I always have snacks to share',
      'color': Color(0xFFCBDFFF),
      "isBorder": false
    },
    {
      'title': 'I have a loud morning routine',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
  ];

  var selectedParson = <String>[].obs;

  void toggleParson(String colorName) {
    if (selectedParson.contains(colorName)) {
      selectedParson.remove(colorName);
    } else {
      selectedParson.add(colorName);
    }
  }

  //==========================================================================================for select gender
  List genderList = ["Male", "Female", "Non-binary"];
  RxString selectedGender = "Male".obs;

  //================================================================================for upload images
  RxList images = [].obs;
  RxList completeProfileImages = [].obs;

  //====================================================================================for select fun screen
  final funyList = <Map<String, dynamic>>[
    {'title': 'Pilates', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Yoga', 'color': Color(0xFFCBDFFF), "isBorder": true},
    {'title': 'Running', 'color': Color(0xFFE8D0FC), "isBorder": true},
    {
      'title': 'Sculpting/Ceramics',
      'color': Color(0xFFFCE9B2),
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
    {'title': 'Painting', 'color': Color(0xFFE8D0FC), "isBorder": true},
    {
      'title': 'Going Out to Eat',
      'color': Color(0xFFFCD5D2),
      "isBorder": false
    },
    {'title': 'Hiking', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Book Clubs', 'color': Color(0xFFCBDFFF), "isBorder": true},
    {'title': 'Shopping', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {
      'title': 'Trying New Coffee/Matcha Shops',
      'color': Color(0xFFFCE9B2),
      "isBorder": false
    },
    {
      'title': 'Going to the Movie Theater',
      'color': Color(0xFFE8D0FC),
      "isBorder": true
    },
    {'title': 'Live Music', 'color': Color(0xFFCBDFFF), "isBorder": true},
    {
      'title': 'Going to Sports Games',
      'color': Color(0xFFFDDEC3),
      "isBorder": true
    },
    {'title': 'Bar Hopping', 'color': Color(0xFFFCD5D2), "isBorder": true},
    {
      'title': 'Going To The Movie Theater',
      'color': Color(0xFFE8D0FC),
      "isBorder": false
    },
    {
      'title': 'Going To The Beach',
      'color': Color(0xFFFCD5D2),
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
