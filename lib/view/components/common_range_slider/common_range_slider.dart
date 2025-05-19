
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:organizers/controller/home_controller/home_controller.dart';
// import 'package:organizers/extentions/extentions.dart';
// import 'package:organizers/utils/app_color.dart';
// import 'package:organizers/view/components/common_text/common_text.dart';

// // ignore: must_be_immutable
// class CommonRangeSlider extends StatelessWidget {
//   String? valueTitle;
//   final double min;
//   final double max;
//   final Function(double, double) onChange;

//   CommonRangeSlider({
//     super.key,
//     this.valueTitle = "Years",
//     required this.min,
//     required this.max,
//     required this.onChange,
//   });

//   final HomeController homeController = Get.find<HomeController>();

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       double start = homeController.startValue.value;
//       double end = homeController.endValue.value;

//       return Column(
//         children: [
//           SliderTheme(
//             data: SliderTheme.of(context).copyWith(
//               trackHeight: 8,
//               thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
//               overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
//               activeTickMarkColor: Colors.transparent,
//               inactiveTickMarkColor: Colors.transparent,
//             ),
//             child: RangeSlider(
//               values: RangeValues(start, end),
//               min: min,
//               max: max,
//               labels: RangeLabels(
//                 start.toInt().toString(),
//                 end.toInt().toString(),
//               ),
//               onChanged: (RangeValues newValues) {
//                 homeController.updateValues(newValues.start, newValues.end);
//                 onChange(newValues.start, newValues.end);
//               },
//               activeColor: AppColors.brown500,
//               inactiveColor: Colors.grey[300],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               item(
//                   title: "Minimum",
//                   value: homeController.startValue.value.toStringAsFixed(0)),
//               item(
//                   title: "Maximum",
//                   value: homeController.endValue.value.toStringAsFixed(0)),
//             ],
//           )
//         ],
//       );
//     });
//   }

//   Widget item({
//     required String title,
//     required String value,
//   }) {
//     return Column(
//       children: [
//         CommonText(
//           text: title,
//           fontSize: 15,
//           color: Colors.black,
//         ),
//         5.height,
//         Container(
//           width: 75.w,
//           height: 34.h,
//           decoration: BoxDecoration(
//               border: Border.all(width: 1.w, color: Colors.black),
//               borderRadius: BorderRadius.circular(11.r)),
//           child: Center(
//               child: CommonText(
//             text: "$value $valueTitle",
//             fontSize: 15,
//             color: Colors.black,
//           )),
//         ),
//       ],
//     );
//   }
// }

