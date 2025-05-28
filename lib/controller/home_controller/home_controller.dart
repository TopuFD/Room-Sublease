import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_card.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.put(HomeController());
  RxInt selectedIndex = 0.obs;

  List<String> tabList = ["Roommates", "Subleases"];


  CardSwiperController swipeController = CardSwiperController();

  List<Widget> cardList = [
    RoommatCard(image: "https://img.freepik.com/free-photo/beautiful-girl-stands-park_8353-5084.jpg?semt=ais_hybrid&w=740",),
    RoommatCard(image: "https://st.depositphotos.com/1015583/2130/i/450/depositphotos_21307971-stock-photo-shining-girl.jpg",),
    RoommatCard(image: "https://img.freepik.com/premium-photo/beautiful-young-girl-with-professional-makeup-hairstyle-sitting-restaurant_2221-592.jpg",),
    RoommatCard(image: "https://img.freepik.com/free-photo/smiley-businesswoman-posing-city-with-arms-crossed_23-2148767033.jpg",),
    RoommatCard(image: "https://img.freepik.com/free-photo/young-woman-new-york-city-daytime_23-2149488470.jpg?semt=ais_hybrid&w=740",),
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
