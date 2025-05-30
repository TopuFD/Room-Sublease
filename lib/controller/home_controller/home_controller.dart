import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:room_sublease/utils/app_image.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_card.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.put(HomeController());
  RxInt selectedIndex = 0.obs;

  List<String> tabList = ["Roommates", "Subleases"];

  CardSwiperController swipeController = CardSwiperController();

  List<Widget> cardList = [
    RoommatCard(
      image: AppImage.mim,
    ),
    RoommatCard(
      image:AppImage.mim,
    ),
    RoommatCard(
      image:AppImage.mim,
    ),
    RoommatCard(
      image:AppImage.mim,
    ),
    RoommatCard(
      image:AppImage.mim,
    ),
  ];

  //====================================================================================for select fun screen
  final funyList = <Map<String, dynamic>>[
    {'title': 'Pilates', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Spa Days', 'color': Color(0xFFFCE9B2), "isBorder": false},
    {'title': 'Hiking', 'color': Color(0xFFFDDEC3), "isBorder": false},
    {'title': 'Comedy Shows ', 'color': Color(0xFFFCD5D2), "isBorder": false},
    {'title': 'Hosting Dinners', 'color': Color(0xFFCBDFFF), "isBorder": false},
  ];
}
