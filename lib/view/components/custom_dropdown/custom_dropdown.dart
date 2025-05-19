

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:mvr/utils/app_color.dart';
// import 'package:mvr/view/component/common_text/common_text.dart';

// class CustomDropdownButton<T> extends StatefulWidget {
//   final List<DropdownMenuItem<T>>? items;
//   final T? initialValue;
//   final ValueChanged<T?> onChanged;
//   final String hintText;
//   final String header;
//   final bool isCountryPicker;

//   const CustomDropdownButton({
//     super.key,
//     this.items,
//     required this.onChanged,
//     this.initialValue,
//     required this.header,
//     this.hintText = "Select an item",
//     this.isCountryPicker = false,
//   });

//   @override
//   CustomDropdownButtonState<T> createState() => CustomDropdownButtonState<T>();
// }

// class CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
//   T? _selectedItem;
//   String? _selectedCountryName;

//   @override
//   void initState() {
//     super.initState();
//     _selectedItem = widget.initialValue;
//   }

//   void _showCountryPicker(BuildContext context) {
//     showCountryPicker(
//       context: context,
//       showPhoneCode: true,
//       onSelect: (country) {
//         setState(() {
//           _selectedCountryName = country.name;
//         });
//         widget.onChanged(country.name as T?);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Align(
//           alignment: Alignment.topLeft,
//           child: CommonText(text:  widget.header,
//               fontWeight: FontWeight.bold, fontSize: 15.sp, color: AppColors.black),
//         ),
//         const SizedBox(height: 5),
//         GestureDetector(
//           onTap:
//               widget.isCountryPicker ? () => _showCountryPicker(context) : null,
//           child: Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(
//                 color: Colors.grey,
//                 width: 1.0,
//               ),
//             ),
//             child: widget.isCountryPicker
//                 ? Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CommonText(text: 
//                           _selectedCountryName ?? widget.hintText,
//                           fontSize: 14.sp,
//                           color: AppColors.black,
//                         ),
//                         const Icon(Icons.keyboard_arrow_down),
//                       ],
//                     ),
//                   )
//                 : DropdownButtonHideUnderline(
//                     child: DropdownButton<T>(
//                       value: _selectedItem,
//                       isExpanded: true,
//                       icon: const Icon(Icons.keyboard_arrow_down),
//                       hint: CommonText(text:  widget.hintText.tr,
//                           fontSize: 12.sp, color: const Color(0xFF8F8F8F)),
//                       items: widget.items,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedItem = value;
//                         });
//                         widget.onChanged(value);
//                       },
//                     ),
//                   ),
//           ),
//         ),
//       ],
//     );
//   }
// }
