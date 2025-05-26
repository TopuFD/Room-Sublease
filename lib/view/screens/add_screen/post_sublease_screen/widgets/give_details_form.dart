import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class GiveDetailsForm extends StatefulWidget {
  const GiveDetailsForm({super.key});

  @override
  State<GiveDetailsForm> createState() => _GiveDetailsFormState();
}

class _GiveDetailsFormState extends State<GiveDetailsForm> {
  bool isUtility = false;
  bool isDiposit = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: "Moving date",
          fontSize: 16,
          bottom: 10,
          maxLines: 2,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w600,
          color: Color(0xFF161312),
        ),
        Container(
          width: Get.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Color(0xFFF3EAE3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: TextEditingController(),
            decoration: InputDecoration(
                hintText: "ASAP",
                border: InputBorder.none,
                suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        ),
        20.height,
        CommonText(
          text: "Lease type",
          fontSize: 16,
          bottom: 10,
          maxLines: 2,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w600,
          color: Color(0xFF161312),
        ),
        Container(
          width: Get.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Color(0xFFF3EAE3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: TextEditingController(),
            decoration: InputDecoration(
                hintText: "month-to-month",
                border: InputBorder.none,
                suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        ),
        20.height,
        rentMonthItem(),
        10.height,
        utility(),
        20.height,
        sequrityDiposit(),
        10.height,
        diposit(),
        20.height,
        CommonText(
          text: "Nots",
          fontSize: 16,
          bottom: 10,
          maxLines: 2,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w600,
          color: Color(0xFF161312),
        ),
        Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Color(0xFFF3EAE3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CommonText(
            text:
                "Looking for a responsible and easy-going roommate to move into my fully furnished 3-bedroom apartment in prime location.",
            fontSize: 16,
            maxLines: 4,
            lineHeight: 1.3,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(22, 19, 18, 0.60),
          ),
        ),
      ],
    );
  }

  rentMonthItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: "Rent/month",
          fontSize: 16,
          bottom: 10,
          maxLines: 2,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w600,
          color: Color(0xFF161312),
        ),
        Row(
          children: [
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: Color(0xFFFCF3EC),
                  border: Border.all(color: Color(0xFFE9DFD8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    CommonText(
                      text: "USD",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(22, 19, 18, 0.60),
                    ),
                    5.width,
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )),
            10.width,
            Container(
              width: Get.width * .69,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Color(0xFFF3EAE3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                    hintText: "\$1650/month",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.keyboard_arrow_down)),
              ),
            ),
          ],
        )
      ],
    );
  }

  sequrityDiposit() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: "Security deposit",
          fontSize: 16,
          bottom: 10,
          maxLines: 2,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w600,
          color: Color(0xFF161312),
        ),
        Row(
          children: [
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: Color(0xFFFCF3EC),
                  border: Border.all(color: Color(0xFFE9DFD8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    CommonText(
                      text: "USD",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(22, 19, 18, 0.60),
                    ),
                    5.width,
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )),
            10.width,
            Container(
              width: Get.width * .69,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Color(0xFFF3EAE3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                    hintText: "\$750",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.keyboard_arrow_down)),
              ),
            ),
          ],
        )
      ],
    );
  }
  //====================================================utility

  utility() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          text: "Utilities included",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF161312),
        ),
        Transform.scale(
          scale: 1.1,
          child: Checkbox(
            value: isUtility,
            fillColor: WidgetStateProperty.all(Colors.transparent),
            checkColor: Colors.black,
            onChanged: (value) {
              setState(() {
                isUtility = value ?? false;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: WidgetStateBorderSide.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return BorderSide(
                    color: Color(0xFFE9DFD8), width: 2); // active border
              }
              return BorderSide(
                  color: Color(0xFFE9DFD8), width: 2); // inactive border
            }),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          ),
        )
      ],
    );
  }

  //====================================================utility

  diposit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          text: "No security deposit needed",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF161312),
        ),
        Transform.scale(
          scale: 1.1,
          child: Checkbox(
            value: isDiposit,
            fillColor: WidgetStateProperty.all(Colors.transparent),
            checkColor: Colors.black,
            onChanged: (value) {
              setState(() {
                isDiposit = value ?? false;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            side: WidgetStateBorderSide.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return BorderSide(
                    color: Color(0xFFE9DFD8), width: 2); // active border
              }
              return BorderSide(
                  color: Color(0xFFE9DFD8), width: 2); // inactive border
            }),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          ),
        )
      ],
    );
  }
}
