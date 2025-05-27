import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_card.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<String> tabList = ["Roommates", "Subleases"];

  List<Widget> cardList = [
    RoommatCard(image: "https://img.freepik.com/free-photo/beautiful-girl-stands-park_8353-5084.jpg?semt=ais_hybrid&w=740",),
    RoommatCard(image: "https://img.freepik.com/premium-photo/portrait-young-caucasian-businesswoman-standing-outdoors-near-modern-facade_506452-2698.jpg?semt=ais_hybrid&w=740",),
    RoommatCard(image: "https://img.freepik.com/premium-photo/beautiful-young-girl-with-professional-makeup-hairstyle-sitting-restaurant_2221-592.jpg",),
    RoommatCard(image: "https://t4.ftcdn.net/jpg/04/25/65/97/360_F_425659755_5BaLdNbbCtQbbiz1JNFBikshfiCWI5NE.jpg",),
    RoommatCard(image: "https://static.vecteezy.com/system/resources/thumbnails/053/630/748/small/portrait-of-a-smiling-business-woman-isolated-on-white-background-photo.jpeg",),
    RoommatCard(image: "https://static.vecteezy.com/system/resources/thumbnails/036/093/165/small/ai-generated-portrait-of-successful-and-happy-businesswoman-office-worker-smiling-and-looking-at-camera-working-inside-modern-office-photo.jpg",),
    RoommatCard(image: "https://img.freepik.com/free-photo/smiley-businesswoman-posing-city-with-arms-crossed_23-2148767033.jpg",),
    RoommatCard(image: "https://media.istockphoto.com/id/1352606416/photo/young-woman-working-at-home-stock-photo.jpg?s=612x612&w=0&k=20&c=uKfBCoTeP54nA8KOzXDLIyoU31nZ4a4UreFE4p_x_3A=",),
    RoommatCard(image: "https://img.freepik.com/free-photo/shot-beautiful-young-businesswoman-wearing-blue-chiffon-shirt-while-standing-building-street-with-folded-arms_158595-6645.jpg",),
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
