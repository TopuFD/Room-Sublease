import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/home_controller/home_controller.dart';
import 'package:room_sublease/core/app_route.dart';

class RoommatBody extends StatelessWidget {
  RoommatBody({super.key});

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CardSwiper(
        cardsCount: homeController.cardList.length,
        numberOfCardsDisplayed: 3,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            InkWell(
          onTap: () {
            Get.toNamed(AppRoute.roommatDetailsScreen);
          },
          child: homeController.cardList[index],
        ),
      ),
    );
  }
}
