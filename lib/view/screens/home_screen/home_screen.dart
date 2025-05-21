import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/home_controller/home_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';

import 'package:room_sublease/view/components/common_tab/common_tab.dart';
import 'package:room_sublease/view/screens/home_screen/widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      appBar: HomeAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return CustomToggleTab(
                tabs: homeController.tabList,
                currentIndex: homeController.selectedIndex.value,
                onChange: (value) {
                  homeController.selectedIndex.value = value;
                });
          }),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 519,
              child: CardSwiper(
                cardsCount: homeController.cardList.length,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) =>
                        homeController.cardList[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
