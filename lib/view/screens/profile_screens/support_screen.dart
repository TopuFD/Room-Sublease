import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

// ignore: must_be_immutable
class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Support"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            24.height,
            Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: "Title",
                      fontSize: 16,
                      bottom: 7,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Color(0xFFE9DFD8), width: 1.5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter title of your problem",
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                        ),
                      ),
                    ),
                    20.height,
                    CommonText(
                      text: "Description",
                      fontSize: 16,
                      bottom: 7,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Color(0xFFE9DFD8), width: 1.5),
                      ),
                      child: TextFormField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Enter a brief description of your problem",
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                        ),
                      ),
                    ),
                    80.height,
                    CommonButton(titleText: "Submit"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
