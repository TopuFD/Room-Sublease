import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import '../../../utils/app_color.dart';
import '../common_text/common_text.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {this.title,
      this.inputFormatters,
      this.onFieldSubmitted,
      this.controller,
      this.focusNode,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.cursorColor = AppColors.black,
      this.textAlignVertical = TextAlignVertical.center,
      this.textAlign = TextAlign.start,
      this.onChanged,
      this.maxLines = 1,
      this.validator,
      this.labelText,
      this.hindText,
      this.titleText = "",
      this.optionalText = "",
      this.textStyle,
      this.hintStyle,
      this.fillColor = AppColors.white,
      this.suffixIcon,
      this.suffixIconColor,
      this.fieldBorderRadius,
      this.fieldBorderColor = Colors.transparent,
      this.isPassword = false,
      this.isPrefixIcon = true,
      this.readOnly = false,
      this.maxLength,
      super.key,
      this.prefixIcon,
      this.storyWordCount = "",
      this.onTap});

  final String? title;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Color cursorColor;
  final TextAlignVertical? textAlignVertical;
  final TextAlign textAlign;
  final int? maxLines;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final FormFieldValidator? validator;
  final String? labelText;
  final String? hindText;
  final String titleText;
  final String optionalText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? fieldBorderRadius;
  final VoidCallback? onTap;

  final Color fieldBorderColor;
  final bool isPassword;
  final bool isPrefixIcon;
  final bool readOnly;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final String storyWordCount;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: widget.titleText,
            fontSize: 18,
            color: AppColors.black,
          ),
          10.height,
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextFormField(
              onTap: widget.onTap,
              inputFormatters: widget.inputFormatters,
              onFieldSubmitted: widget.onFieldSubmitted,
              readOnly: widget.readOnly,
              controller: widget.controller,
              focusNode: widget.focusNode,
              maxLength: widget.maxLength,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              cursorColor: widget.cursorColor,
              style: widget.textStyle,
              onChanged: widget.onChanged,
              maxLines: widget.maxLines,
              obscureText: widget.isPassword ? obscureText : false,
              validator: widget.validator,
              showCursor:
                  widget.keyboardType == TextInputType.none ? false : true,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.h, horizontal: 14.w),
                labelText: widget.labelText,
                hintText: widget.hindText,
                labelStyle: widget.textStyle,
                hintStyle:
                    widget.hintStyle ?? TextStyle(color: Color(0xFF9E9E9E)),
                fillColor: widget.fillColor,
                filled: true,
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: toggle,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 10, bottom: 10),
                          child: obscureText
                              ? SizedBox(
                                  height: 30.h,
                                  width: 30.w,
                                  child:
                                      SvgPicture.asset(AppIcons.visibilityOff))
                              : SizedBox(
                                  height: 30.h,
                                  width: 30.w,
                                  child:
                                      SvgPicture.asset(AppIcons.visibilityOn2),
                                ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: widget.suffixIcon,
                      ),
                suffixIconColor: widget.suffixIconColor,
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.fieldBorderRadius ?? 16.r),
                    borderSide:
                        BorderSide(color: Color(0x3F000000), width: 1.5),
                    gapPadding: 0),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.fieldBorderRadius ?? 16.r),
                    borderSide:
                        BorderSide(color: Color(0x3F000000), width: 1.5),
                    gapPadding: 0),
                enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.fieldBorderRadius ?? 16.r),
                    borderSide:
                        BorderSide(color: Color(0x3F000000), width: 1.5),
                    gapPadding: 0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
