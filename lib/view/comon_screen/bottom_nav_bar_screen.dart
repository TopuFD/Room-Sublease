
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:room_sublease/controller/bottom_nav_controller/bottom_nav_controller.dart';
// import 'package:room_sublease/utils/app_image.dart';
// import '../../Utils/app_icons.dart';

// class CommonBottomNavBar extends StatelessWidget {
//   const CommonBottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     final BottomNavController navController =
//         Get.find<BottomNavController>();

//     List<Widget> pages = [
//       SizedBox(),
//       SizedBox(),
//       SizedBox(),
//       SizedBox(),
//       SizedBox(),
//     ];

//     List<String> icon = [
//       AppIcons.home,
//       AppIcons.location,
//       AppIcons.scanner,
//       AppIcons.venue,
//       AppIcons.profile
//     ];

//     return Scaffold(

//       resizeToAvoidBottomInset: true,
//       extendBody: true,
//       body: Obx(() {
//         return pages[navController.selectedIndex.value];
//       }),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: Container(
//         height: 130,
//         width: Get.width,
//         decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//             color: Colors.transparent,
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(AppImage.navImage),
//             )),
//         child: Obx(() {
//           return Padding(
//             padding: EdgeInsets.only(left: 10.w, top: 20, right: 10.w),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 icon.length,
//                 (index) {
//                   return Container(
//                     margin: index == 1
//                         ? EdgeInsets.only(right: 5.w)
//                         : index == 2
//                             ? EdgeInsets.only(bottom: 40.w)
//                             : index == 3
//                                 ? EdgeInsets.only(left: 5.w)
//                                 : EdgeInsets.zero,
//                     child: TextButton(
//                       style: ButtonStyle(),
//                       onPressed: () {
//                         if (index == 4) {
//                           // If index is 4 (the last item), navigate to the Sign In screen
//                           Get.toNamed(AppRoute.signUpChooserScreen); // Navigate to SignInScreen route
//                         } else {
//                           navController.bottomNavIndex.value = index; // Update the index reactively
//                         }
//                       },
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           if (navController.bottomNavIndex.value != index)
//                             4.height,
//                           SvgPicture.asset(
//                             icon[index],
//                             // ignore: deprecated_member_use
//                             color:
//                                 navController.bottomNavIndex.value == index &&
//                                         index != 2
//                                     ? Color(0xFF075B5D)
//                                     : index ==2 ? Colors.white: Colors.grey,
//                           ),
//                           if (index != 2) 8.height,
//                           if (index != 2)
//                             Container(
//                               height: 7,
//                               width: 7,
//                               decoration: BoxDecoration(
//                                   color: navController.bottomNavIndex.value == index
//                                       ? Color(0xFF075B5D)
//                                       : Colors.transparent,
//                                   shape: BoxShape.circle),
//                             )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
