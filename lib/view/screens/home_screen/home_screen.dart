// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:room_sublease/controller/home_controller/home_controller.dart';

// import 'package:room_sublease/view/components/common_tab/common_tab.dart';
// import 'package:room_sublease/view/screens/home_screen/widget/home_appbar.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   final HomeController homeController = Get.put(HomeController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFCF3EC),
//       appBar: HomeAppbar(),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Obx(() {
//             return CustomToggleTab(
//                 tabs: homeController.tabList,
//                 currentIndex: homeController.selectedIndex.value,
//                 onChange: (value) {
//                   homeController.selectedIndex.value = value;
//                 });
//           }),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/home_controller/home_controller.dart';
import 'package:room_sublease/extentions/extentions.dart';

import 'package:room_sublease/view/components/common_tab/common_tab.dart';
import 'package:room_sublease/view/screens/home_screen/widget/home_appbar.dart';
import 'package:room_sublease/view/screens/home_screen/widget/roommat_body.dart';
import 'package:room_sublease/view/screens/home_screen/widget/subleas_body.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Obx(() {
              return CustomToggleTab(
                tabs: homeController.tabList,
                currentIndex: homeController.selectedIndex.value,
                onChange: (value) {
                  homeController.selectedIndex.value = value;
                },
              );
            }),
          ),
          Expanded(
            child: Obx(() {
              return AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  final offsetAnimation = Tween<Offset>(
                    begin: Offset(0.0, 0.1),
                    end: Offset.zero,
                  ).animate(animation);
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    ),
                  );
                },
                switchInCurve: Curves.easeIn,
                switchOutCurve: Curves.easeOut,
                child: buildBody(homeController.selectedIndex.value),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return RoommatBody();
      case 1:
        return SingleChildScrollView(
        
            child: Column(
          children: [
            SubleasBody(),
            80.height,
          ],
        ));
      default:
        return RoommatBody();
    }
  }
}
