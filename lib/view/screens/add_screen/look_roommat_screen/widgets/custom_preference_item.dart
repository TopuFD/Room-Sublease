
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:room_sublease/view/components/common_text/common_text.dart';

// class CustomItem extends StatelessWidget {
//   final String title;
//   final RxString? value;
//   final RxList<String>? listValue; // ✅ Optional RxList
//   final RxBool isDeal;
//   final VoidCallback ontap;

//   const CustomItem({
//     super.key,
//     required this.title,
//     this.value,
//     this.listValue,
//     required this.isDeal,
//     required this.ontap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: InkWell(
//         onTap: ontap,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Left side text column
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CommonText(
//                       text: title,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xFF161312),
//                     ),
//                     SizedBox(height: 5.h),

//                     // ✅ Handle listValue null and Obx safely
//                     Builder(
//                       builder: (_) {
//                         if (listValue == null) {
//                           return Obx(() {
//                             return CommonText(
//                               text: value,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Color.fromRGBO(22, 19, 18, 0.60),
//                             );
//                           });
//                         }

//                         return Obx(() {
//                           if (listValue!.isEmpty) {
//                             return CommonText(
//                               text: value,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: Color.fromRGBO(22, 19, 18, 0.60),
//                             );
//                           }
//                           return Row(
//                             children: List.generate(listValue!.length, (index) {
//                               return CommonText(
//                                 text:
//                                     "${listValue![index]}${index < listValue!.length - 1 ? ',' : ''}",
//                                 fontSize: 14,
//                                 right: 5.w,
//                                 fontWeight: FontWeight.w500,
//                                 color: Color.fromRGBO(22, 19, 18, 0.60),
//                               );
//                             }),
//                           );
//                         });
//                       },
//                     ),
//                   ],
//                 ),

//                 // Right side deal tag and arrow
//                 Row(
//                   children: [
//                     Obx(() {
//                       return isDeal.value
//                           ? Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 5),
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFF3EAE3),
//                                 borderRadius: BorderRadius.circular(100),
//                               ),
//                               child: CommonText(
//                                 text: "Dealbreaker",
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFF161312),
//                               ),
//                             )
//                           : SizedBox();
//                     }),
//                     SizedBox(width: 10.w),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       size: 15,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 7.h),
//             Divider(
//               color: Color(0xFFE9DFD8),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class CustomItem extends StatelessWidget {
  final String title;
  final RxString? value;               // ✅ RxString
  final RxList<String>? listValue;    // ✅ Optional RxList
  final RxBool isDeal;
  final VoidCallback ontap;

  const CustomItem({
    super.key,
    required this.title,
    this.value,
    this.listValue,
    required this.isDeal,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: ontap,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side text column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: title,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF161312),
                    ),
                    SizedBox(height: 5.h),

                    // ✅ Smart reactive rendering
                    Builder(
                      builder: (_) {
                        if (listValue == null) {
                          return Obx(() {
                            return CommonText(
                              text: value?.value ?? "",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(22, 19, 18, 0.60),
                            );
                          });
                        }

                        return Obx(() {
                          if (listValue!.isEmpty) {
                            return CommonText(
                              text: value?.value ?? "",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(22, 19, 18, 0.60),
                            );
                          }

                          return Row(
                            children: List.generate(listValue!.length, (index) {
                              return CommonText(
                                text:
                                    "${listValue![index]}${index < listValue!.length - 1 ? ',' : ''}",
                                fontSize: 14,
                                right: 5.w,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(22, 19, 18, 0.60),
                              );
                            }),
                          );
                        });
                      },
                    ),
                  ],
                ),

                // ✅ Deal tag and arrow
                Row(
                  children: [
                    Obx(() {
                      return isDeal.value
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3EAE3),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const CommonText(
                                text: "Dealbreaker",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF161312),
                              ),
                            )
                          : const SizedBox();
                    }),
                    SizedBox(width: 10.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7.h),
            const Divider(
              color: Color(0xFFE9DFD8),
            ),
          ],
        ),
      ),
    );
  }
}
