import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_card.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<String> tabList = ["Roommates", "Subleases"];

  List<Widget> cardList = [
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
    RoommatCard(),
  ];

  //====================================================================================for select fun screen
  final funyList = <Map<String, dynamic>>[
    {'title': 'pilates', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Spa Days', 'color': Color(0xFFFCE9B2), "isBorder": false},
    {'title': 'Hiking', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Comedy shows ', 'color': Color(0xFFFCD5D2), "isBorder": false},
    {
      'title': 'Hosting dinners',
      'color': Color(0xFFCBDFFF),
      "isBorder": false
    },
  ];
}
