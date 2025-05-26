import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class GreekLifeScreen extends StatefulWidget {
  const GreekLifeScreen({super.key});

  @override
  State<GreekLifeScreen> createState() => _GreekLifeScreenState();
}

class _GreekLifeScreenState extends State<GreekLifeScreen> {
  bool isYes = false;
  bool isNO = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 1,
                color: Color(0xFFE9DFD8),
              ),
              Container(
                width: Get.width,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          24.height,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: "Were you involved in Greek life in college?",
                  fontSize: 24,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Tell us more about you",
                  fontSize: 16,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      text: "Yes",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF161312),
                    ),
                    Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: isYes,
                        fillColor:
                            MaterialStateProperty.all(Colors.transparent),
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            isYes = value ?? false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: MaterialStateBorderSide.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return BorderSide(
                                color: Color(0xFFE9DFD8),
                                width: 2); // active border
                          }
                          return BorderSide(
                              color: Color(0xFFE9DFD8),
                              width: 2); // inactive border
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity:
                            VisualDensity(horizontal: -4, vertical: -4),
                      ),
                    )
                  ],
                ),
                24.height,
                Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF3EAE3),
                        border: Border.all(color: Color(0xFFE8E8E8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Choose sororities or fraternity",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    )),
                24.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      text: "No",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF161312),
                    ),
                    Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: isNO,
                        fillColor:
                            MaterialStateProperty.all(Colors.transparent),
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            isNO = value ?? false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: MaterialStateBorderSide.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return BorderSide(
                                color: Color(0xFFE9DFD8),
                                width: 2); // active border
                          }
                          return BorderSide(
                              color: Color(0xFFE9DFD8),
                              width: 2); // inactive border
                        }),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity:
                            VisualDensity(horizontal: -4, vertical: -4),
                      ),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {},
                ),
                40.height,
              ],
            ),
          ))
        ],
      ),
    );
  }
}
