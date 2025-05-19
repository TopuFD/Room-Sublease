import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CustomRoundCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?) onChanged;
  final double size;
  final Color activeColor;
  final Color inactiveColor;
  final Color borderColor;
  final double borderWidth;

  const CustomRoundCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.size = 30.0,
    this.activeColor = const Color(0xFFFF9243),
    this.inactiveColor = const Color(0xFFFFFFFF),
    this.borderColor = const Color(0xFFC8D1E5),
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return RoundCheckBox(
      size: size,
      isChecked: isChecked,
      checkedColor: activeColor,
      uncheckedColor: inactiveColor,
      borderColor: borderColor,
      onTap: onChanged,
    );
  }
}
