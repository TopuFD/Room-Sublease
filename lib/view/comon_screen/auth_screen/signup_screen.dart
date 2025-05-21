import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/custom_text_field/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              20.height,
              Align(
                alignment: Alignment.center,
                child: CommonText(
                  text: "Create an account",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2A2927),
                ),
              ),
              12.height,
              SizedBox(
                width: 300.w,
                child: Align(
                  alignment: Alignment.center,
                  child: CommonText(
                    text:
                        "Enter the following details carefully to create your account",
                    fontSize: 16,
                    maxLines: 2,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(42, 41, 39, 0.60),
                  ),
                ),
              ),
              24.height,
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        titleText: "Name",
                        hindText: "Jason Smith",
                      ),
                      20.height,
                      CustomTextField(
                        titleText: "Email",
                        hindText: "j.smith@gmail.com",
                      ),
                      20.height,
                      CustomTextField(
                        titleText: "Password",
                        hindText: "********",
                        isPassword: true,
                      ),
                    ],
                  )),
              24.height,
              CommonButton(titleText: "Sign up"),
              24.height,
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE9DFD8),
                    ),
                  ),
                  CommonText(
                    text: "OR",
                    fontSize: 13,
                    left: 10,
                    right: 10,
                    color: Color(0x7F2A2827),
                    fontWeight: FontWeight.w500,
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFE9DFD8),
                    ),
                  ),
                ],
              ),
              24.height,
              CommonButton(
                titleText: "Sign in with Google",
                icon: SvgPicture.asset(AppIcons.google),
                buttonColor: Color(0xFFF3EAE3),
                titleColor: Color(0xFF161312),
              ),
              24.height,
              CommonButton(
                titleText: "Sign in with Apple",
                icon: SvgPicture.asset(AppIcons.apple),
                buttonColor: Color(0xFFF3EAE3),
                titleColor: Color(0xFF161312),
              ),
              60.height,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Already a member? ",
                    style: GoogleFonts.manrope(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(42, 41, 39, 0.6),
                    )),
                TextSpan(
                    text: "Sign in",
                    style: GoogleFonts.manrope(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF161312),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(AppRoute.signupScreen);
                      }),
              ])),
              50.height,
            ],
          ),
        ),
      ),
    );
  }
}
