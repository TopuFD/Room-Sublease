import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:room_sublease/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:room_sublease/view/screens/add_screen/add_post_screen.dart';
import 'package:room_sublease/view/screens/home_screen/home_screen.dart';
import 'package:room_sublease/view/screens/message_screens/message_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/profile_screen.dart';

import '../../Utils/app_icons.dart';

class CommonBottomNavBar extends StatelessWidget {
  CommonBottomNavBar({super.key});

  final BottomNavController navController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFCF3EC),
    ));

    List<Widget> pages = [
      HomeScreen(),
      AddPostScreen(),
      MessageScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: Color(0xFFFCF3EC),
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: Obx(() {
        return pages[navController.selectedIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: (index) {
            navController.selectedIndex.value = index;
          },
          backgroundColor: Color(0xFFFCF3EC),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF075B5D),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                navController.selectedIndex.value == 0
                    ? AppIcons.home1
                    : AppIcons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                navController.selectedIndex.value == 1
                    ? AppIcons.addIcon
                    : AppIcons.add,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                navController.selectedIndex.value == 2
                    ? AppIcons.message1
                    : AppIcons.message,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                navController.selectedIndex.value == 3
                    ? AppIcons.profile1
                    : AppIcons.profile,
              ),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
}
