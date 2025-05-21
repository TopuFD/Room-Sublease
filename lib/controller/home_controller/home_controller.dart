import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_card.dart';

class HomeController extends GetxController{
  RxInt selectedIndex = 0.obs;

  List<String> tabList = [
    "Roommates",
    "Subleases"
  ];


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

}