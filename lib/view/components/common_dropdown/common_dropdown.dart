

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonDropdown extends StatelessWidget {
  final List<String> items;
  final String selectedValue;
  final ValueChanged<String> onChange;
  final IconData icon;

  const CommonDropdown({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChange,
    this.icon = Icons.keyboard_arrow_down,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(icon, size: 24.w),
      onSelected: (value) {
        onChange(value);
      },
      itemBuilder: (context) => items.toSet().map((String item) {
        return PopupMenuItem<String>(
          value: item,
          child: Text(item, style: TextStyle(fontSize: 16.sp)),
        );
      }).toList(),
    );
  }
}
