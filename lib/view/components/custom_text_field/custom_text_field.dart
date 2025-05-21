import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      this.fillColor = const Color(0xFFFCF3EC),
      this.suffixIcon,
      this.suffixIconColor,
      this.fieldBorderRadius,
      this.fieldBorderColor = const Color(0xFFE9DFD8),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CommonText(
          text: widget.titleText,
          fontSize: 18,
          color: Color(0xFF141415),
        ),
        SizedBox(
          height: 40,
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
              contentPadding: EdgeInsets.only(bottom: 2),
              labelText: widget.labelText,
              hintText: widget.hindText,
              labelStyle: widget.textStyle,
              hintStyle:
                  widget.hintStyle ?? TextStyle(color: Color(0xFF9E9E9E)),
              fillColor: widget.fillColor,
              filled: true,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isPassword
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: toggle,
                        child: obscureText
                            ? SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Icon(Icons.visibility_off))
                            : SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Icon(Icons.visibility),
                              ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: widget.suffixIcon,
                    ),
              suffixIconColor: widget.suffixIconColor,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: widget.fieldBorderColor,
                    width: 1.5),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: widget.fieldBorderColor,
                    width: 1.5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: widget.fieldBorderColor,
                    width: 1.5),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
